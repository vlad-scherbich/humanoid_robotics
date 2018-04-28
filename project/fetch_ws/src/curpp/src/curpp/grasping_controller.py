import rospy

import geometry_msgs.msg
import moveit_msgs.msg

import moveit_commander
import moveit_python

import tf_conversions.posemath as pm
import tf
import copy


# Tools for grasping
class MoveitPickPlaceInterface(object):

    def __init__(self,
                 arm_name,                  # type: str
                 gripper_name,              # type: str
                 grasp_approach_tran_frame,  # type: str
                 analyzer_planner_id,        # type: str
                 execution_planner_id,       # type: str
                 allowed_analyzing_time,     # type: int
                 allowed_execution_time      # type: int
                 ):
        """
        :param arm_topic: Topic for arm controller
        :param gripper_topic: Topic for gripper controller
        :param grasp_approach_tran_frame: Transform for approach_tran
        :param analyzer_planner_id: Planner type for planning command
        :param execution_planner_id: Planner type for executing command
        :param allowed_analyzing_time: Seconds for analyzing grasp
        :param allowed_execution_time: Seconds for executing grasp
        """

        self.pick_place_analyzer = moveit_python.PickPlaceInterface(arm_name, gripper_name, plan_only=True)
        self.pick_place_executor = moveit_python.PickPlaceInterface(arm_name, gripper_name, plan_only=False)

        self.arm_move_group = moveit_commander.MoveGroupCommander(arm_name)
        self.gripper_move_group = moveit_commander.MoveGroupCommander(gripper_name)

        self.analyzer_planner_id = analyzer_planner_id
        self.execution_planner_id = execution_planner_id
        self.grasp_approach_tran_frame = grasp_approach_tran_frame
        self.tf_listener = tf.TransformListener()

        self.allowed_analyzing_time = allowed_analyzing_time
        self.allowed_execution_time = allowed_execution_time

        self.tf_broadcaster = tf.TransformBroadcaster()

    def analyze_moveit_grasp(self, object_name, moveit_grasp_msg):
        # type: (str, moveit_msgs.msg.Grasp) -> (bool, moveit_msgs.msg.PickupResult)

        pick_result = self.pick_place_analyzer.pickup(name=object_name,
                                                      grasps=[moveit_grasp_msg, ],
                                                      planner_id=self.analyzer_planner_id,
                                                      planning_time=self.allowed_analyzing_time)

        # type: pick_result -> moveit_msgs.msg.PickupResult
        success = pick_result.error_code.val == pick_result.error_code.SUCCESS

        return success, pick_result

    def execute_moveit_grasp(self, object_name, moveit_grasp_msg):
        # type: (str, moveit_msgs.msg.Grasp) -> (bool, moveit_msgs.msg.PickupResult)

        pick_result = self.pick_place_executor.pickup(name=object_name,
                                                      grasps=[moveit_grasp_msg, ],
                                                      planner_id=self.execution_planner_id,
                                                      planning_time=self.allowed_execution_time)

        # type: pick_result -> moveit_msgs.msg.PickupResult
        success = pick_result.error_code.val == pick_result.error_code.SUCCESS

        return success, pick_result

    def place(self, object_name, pick_result, pose_stamped):
        # type: (str, moveit_msgs.msg.PickupResult, geometry_msgs.msg.PoseStamped) -> (bool, moveit_msgs.msg.PlaceResult)
        places = list()
        l = moveit_msgs.msg.PlaceLocation()
        l.place_pose.pose = pose_stamped.pose
        l.place_pose.header.frame_id = pose_stamped.header.frame_id

        # copy the posture, approach and retreat from the grasp used
        l.post_place_posture = pick_result.grasp.pre_grasp_posture
        l.pre_place_approach = pick_result.grasp.pre_grasp_approach
        l.post_place_retreat = pick_result.grasp.post_grasp_retreat
        places.append(copy.deepcopy(l))

        success, place_result = self.pick_place_executor.place_with_retry(object_name, places)
        return success, place_result

    def pub_graspit_grasp_tf(self, object_name, graspit_grasp_msg):
        # type: (str, graspit_msgs.msg.Grasp) -> ()
        tf_pose = pm.toTf(pm.fromMsg(graspit_grasp_msg.final_grasp_pose))
        self.tf_broadcaster.sendTransform(tf_pose[0], tf_pose[1], rospy.Time.now(), "/grasp_approach_tran", object_name)

    def pub_moveit_grasp_tf(self, object_name, moveit_grasp_msg):
        # type: (str, moveit_msgs.msg.Grasp) -> ()
        tf_pose = pm.toTf(pm.fromMsg(moveit_grasp_msg.grasp_pose.pose))
        self.tf_broadcaster.sendTransform(tf_pose[0], tf_pose[1], rospy.Time.now(), "/moveit_end_effector_frame", object_name)

    def home_arm(self):
        return self.go_to_named_target_arm("home")

    def close_hand(self):
        return self.go_to_named_target_hand("open")

    def open_hand(self):
        return self.go_to_named_target_hand("open")

    def go_to_named_target_arm(self, target):
        # type: (str) -> bool
        self.arm_move_group.set_planner_id(self.execution_planner_id)
        self.arm_move_group.set_start_state_to_current_state()
        self.arm_move_group.set_planning_time(self.allowed_execution_time)
        self.arm_move_group.set_named_target(target)

        plan = self.arm_move_group.plan()

        success = self.arm_move_group.execute(plan, wait=True)

        return success

    def go_to_named_target_hand(self, target):
        # type: (str) -> bool
        self.gripper_move_group.set_planner_id(self.execution_planner_id)
        self.gripper_move_group.set_start_state_to_current_state()
        self.gripper_move_group.set_planning_time(self.allowed_execution_time)
        self.gripper_move_group.set_named_target(target)

        plan = self.gripper_move_group.plan()

        success = self.gripper_move_group.execute(plan, wait=True)

        return success

    def get_end_effector_link(self):
        # type: () -> str
        return self.arm_move_group.get_end_effector_link()

    def get_planning_frame(self):
        # type: () -> str
        return self.arm_move_group.get_planning_frame()

    def detach_all_blocks(self, block_names):
        for block in block_names:
            self.arm_move_group.detach_object(block)

    def stop_execution(self):
        self.arm_move_group.stop()
        self.gripper_move_group.stop()
