import rospy
import moveit_msgs.msg
import geometry_msgs.msg
import block_recognition_msgs.msg
import visualization_msgs.msg
import graspit_interface.msg
import std_msgs.msg

import block_recognition
import typing
import moveit_commander
import curpp
import world_manager
import tf
import pyquaternion
import numpy as np
import promise
import promise.dataloader

import constants


def construct_graspit_grasp(position, orientation):
    graspit_grasp_msg = graspit_interface.msg.Grasp()
    pose = geometry_msgs.msg.Pose()
    pose.position = position
    pose.orientation = orientation
    graspit_grasp_msg.pose = pose
    return graspit_grasp_msg


def plan_grasps(x=0, y=0, z=0.080):
    position = geometry_msgs.msg.Point(x, y, z)

    normal_orientation = pyquaternion.Quaternion(x=0, y=0, z=0, w=1)
    rotated_orientation = pyquaternion.Quaternion(axis=[1, 0, 0], angle=np.pi/2)
    rotated_orientation = rotated_orientation * normal_orientation

    geom_orient = geometry_msgs.msg.Quaternion(x=normal_orientation[0], y=normal_orientation[1], z=normal_orientation[2], w=normal_orientation[3])
    geom_orient_rot = geometry_msgs.msg.Quaternion(x=rotated_orientation[0], y=rotated_orientation[1], z=rotated_orientation[2], w=rotated_orientation[3])

    grasps = list()
    grasps.append(construct_graspit_grasp(position, geom_orient))
    grasps.append(construct_graspit_grasp(position, geom_orient_rot))

    return grasps


def create_block_marker(block, is_highlighted, color=None):
    # type: (block_recognition_msgs.msg.DetectedBlock) -> visualization_msgs.msg.Marker
    marker = visualization_msgs.msg.Marker()

    marker.header = block.pose_stamped.header
    marker.type = visualization_msgs.msg.Marker.CUBE
    marker.action = visualization_msgs.msg.Marker.ADD
    marker.lifetime = rospy.Duration(0)  # Show block until it is deleted

    if is_highlighted:
        # Add scaling factor based on the size of the cube * 1.1 for highlighted
        marker.scale.x = block.edge_length * 1.0
        marker.scale.y = block.edge_length * 1.0
        marker.scale.z = block.edge_length * 1.0
        marker.color = constants.HIGHLIGHTED_BLOCK_COLOR
        marker.id = -1  # "highlighted"
    else:
        # Add scaling factor based on the size of the cube
        marker.scale.x = block.edge_length * 1.0
        marker.scale.y = block.edge_length * 1.0
        marker.scale.z = block.edge_length * 1.0
        marker.color = constants.NORMAL_BLOCK_COLOR
        marker.id = block.unique_id

    if color is not None:
        marker.color = color

    marker.pose = block.pose_stamped.pose

    return marker


def capture_grasp_marker(color=None):
    grasp_promise = promise.Promise()

    # Create subscriber to /move_group/display_grasp_markers
    def listen_for_grasp_markers(markers):
        # type: (visualization_msgs.msg.MarkerArray) -> ()
        for marker in markers.markers:
            if color is not None:
                marker.color = color
            else:
                marker.color = constants.GRASP_MARKER_COLOR

        grasp_marker_subscriber.unregister()
        grasp_promise.resolve(markers)

    grasp_marker_subscriber = rospy.Subscriber(
        '/move_group/display_grasp_markers',
        visualization_msgs.msg.MarkerArray,
        listen_for_grasp_markers
    )

    return grasp_promise


def create_block_position_marker(block, position, color=None, is_highlighted=False):
    # type: (block_recognition_msgs.msg.DetectedBlock, geometry_msgs.msg.Point, std_msgs.msg.ColorRGBA, bool) -> visualization_msgs.msg.Marker
    marker = visualization_msgs.msg.Marker()

    marker.header = block.pose_stamped.header
    marker.type = visualization_msgs.msg.Marker.CUBE
    marker.action = visualization_msgs.msg.Marker.ADD
    marker.lifetime = rospy.Duration(0)  # Show block until it is deleted

    # Add scaling factor based on the size of the cube * 1.1 for highlighted
    if is_highlighted:
        marker.scale.x = block.edge_length * 1.5
        marker.scale.y = block.edge_length * 1.5
        marker.scale.z = block.edge_length * 1.5
        marker.color = constants.HIGHLIGHTED_BLOCK_COLOR
        marker.id = -1  # "highlighted"
    else:
        # Add scaling factor based on the size of the cube
        marker.scale.x = block.edge_length * 1.3
        marker.scale.y = block.edge_length * 1.3
        marker.scale.z = block.edge_length * 1.3
        marker.color = constants.NORMAL_BLOCK_COLOR
        marker.id = position.__hash__

    if color is not None:
        marker.color = color

    marker.pose.position = position

    return marker


def generate_delete_all_marker_array():
    delete_all_array = visualization_msgs.msg.MarkerArray()
    delete_all_marker = visualization_msgs.msg.Marker()
    delete_all_marker.action = visualization_msgs.msg.Marker.DELETEALL
    delete_all_array.markers.append(delete_all_marker)
    return delete_all_array


def plan_place_locations():
    close_position = geometry_msgs.msg.Point()
    give_position = geometry_msgs.msg.Point()

    close_position.x = rospy.get_param("close_final_block_position_x")
    close_position.y = rospy.get_param("close_final_block_position_y")
    close_position.z = rospy.get_param("close_final_block_position_z")

    give_position.x = rospy.get_param("give_final_block_position_x")
    give_position.y = rospy.get_param("give_final_block_position_y")
    give_position.z = rospy.get_param("give_final_block_position_z")

    return [close_position, give_position]


class SkillManager:

    def __init__(self):

        # Initialize publishers

        # Pull all params off param server
        self.grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")
        self.world_frame = rospy.get_param("world_frame")
        self.arm_move_group_name = rospy.get_param("arm_move_group_name")
        self.gripper_move_group_name = rospy.get_param("gripper_move_group_name")

        self.analyzer_planner_id = rospy.get_param("analyzer_planner_id")
        self.executor_planner_id = rospy.get_param("executor_planner_id")
        self.allowed_analyzing_time = rospy.get_param("allowed_analyzing_time")
        self.allowed_execution_time = rospy.get_param("allowed_execution_time")

        # Initialize ros service interfaces
        self.grasping_controller = curpp.MoveitPickPlaceInterface(
            arm_name=self.arm_move_group_name,
            gripper_name=self.gripper_move_group_name,
            grasp_approach_tran_frame=self.grasp_approach_tran_frame,
            analyzer_planner_id=self.analyzer_planner_id,
            execution_planner_id=self.executor_planner_id,
            allowed_analyzing_time=self.allowed_analyzing_time,
            allowed_execution_time=self.allowed_execution_time
        )

        self.scene = moveit_commander.PlanningSceneInterface()
        self.world_manager_client = world_manager.world_manager_client.WorldManagerClient()
        self.tf_listener = tf.TransformListener()

    def graspit_grasp_to_moveit_grasp(self, object_name, graspit_grasp):
        # type: (str, graspit_interface.msg.Grasp) -> moveit_msgs.msg.Grasp

        pre_grasp_approach_direction = geometry_msgs.msg.Vector3Stamped()
        pre_grasp_approach_direction.header.frame_id = rospy.get_param("pre_grasp_approach_direction_frame_id")
        pre_grasp_approach_direction.vector.x = rospy.get_param("pre_grasp_approach_direction_x")
        pre_grasp_approach_direction.vector.y = rospy.get_param("pre_grasp_approach_direction_y")
        pre_grasp_approach_direction.vector.z = rospy.get_param("pre_grasp_approach_direction_z")

        post_grasp_retreat_direction = geometry_msgs.msg.Vector3Stamped()
        post_grasp_retreat_direction.header.frame_id = rospy.get_param("post_grasp_retreat_direction_frame_id")
        post_grasp_retreat_direction.vector.x = rospy.get_param("post_grasp_retreat_direction_x")
        post_grasp_retreat_direction.vector.y = rospy.get_param("post_grasp_retreat_direction_y")
        post_grasp_retreat_direction.vector.z = rospy.get_param("post_grasp_retreat_direction_z")

        grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")

        moveit_grasp_msg = curpp.graspit_grasp_to_moveit_grasp(
            object_name=object_name,
            graspit_grasp_msg=graspit_grasp,
            listener=self.tf_listener,
            grasp_tran_frame_name=grasp_approach_tran_frame,
            end_effector_link=self.grasping_controller.get_end_effector_link(),

            pre_grasp_goal_point_effort=rospy.get_param("pre_grasp_goal_point_effort"),
            pre_grasp_goal_point_positions=rospy.get_param("pre_grasp_goal_point_positions"),
            pre_grasp_goal_point_time_from_start_secs=rospy.get_param("pre_grasp_goal_point_time_from_start_secs"),
            pre_grasp_joint_names=rospy.get_param("pre_grasp_joint_names"),

            grasp_goal_point_effort=rospy.get_param("grasp_goal_point_effort"),
            grasp_goal_point_positions=rospy.get_param("grasp_goal_point_positions"),
            grasp_goal_point_time_from_start_secs=rospy.get_param("grasp_goal_point_time_from_start_secs"),

            grasp_posture_joint_names=rospy.get_param("grasp_posture_joint_names"),

            pre_grasp_approach_min_distance=rospy.get_param("pre_grasp_approach_min_distance"),
            pre_grasp_approach_desired_distance=rospy.get_param("pre_grasp_approach_desired_distance"),
            pre_grasp_approach_direction=pre_grasp_approach_direction,

            post_grasp_retreat_min_distance=rospy.get_param("post_grasp_retreat_min_distance"),
            post_grasp_retreat_desired_distance=rospy.get_param("post_grasp_retreat_desired_distance"),
            post_grasp_retreat_direction=post_grasp_retreat_direction,

            max_contact_force=rospy.get_param("max_contact_force")
        )

        return moveit_grasp_msg

    def analyze_grasp_reachability(self, object_name, graspit_grasp):
        # type: (str, graspit_interface.msg.Grasp) -> (moveit_msgs.msg.PickupResult, bool)
        """
        @return: Whether the grasp is expected to succeed
        """
        # Convert graspit grasp to moveit grasp
        rospy.loginfo("Analyzing grasp for object: {}".format(object_name))

        block_names = self.scene.get_attached_objects().keys()
        self.grasping_controller.detach_all_blocks(block_names)

        moveit_grasp_msg = self.graspit_grasp_to_moveit_grasp(object_name, graspit_grasp)
        success, pick_result = self.grasping_controller.analyze_moveit_grasp(object_name, moveit_grasp_msg)

        rospy.loginfo("Able to execute grasp with grasp id {} after analysis: {}".format(moveit_grasp_msg.id, success))

        return pick_result, success

    def execute_grasp(self, object_name, graspit_grasp, place_position=None):
        # type: (str, graspit_interface.msg.Grasp) -> bool
        rospy.loginfo("Executing grasp goal")

        block_names = self.scene.get_attached_objects().keys()
        self.grasping_controller.detach_all_blocks(block_names)

        # Acquire block position for place
        objects = self.scene.get_object_poses([object_name])
        if object_name not in objects:
            rospy.logerr("Object {} not in planning scene. Execute grasp failed".format(object_name))
            return False

        block_pose_stamped = geometry_msgs.msg.PoseStamped()
        block_pose_stamped.pose = objects[object_name]
        block_pose_stamped.header.frame_id = self.grasping_controller.get_planning_frame()

        rospy.loginfo("Object {} in planning scene. Pose: {}".format(object_name, block_pose_stamped.pose))

        # Shift block pose to place location in param server
        if place_position is not None:
            block_pose_stamped.pose.position.x = rospy.get_param("final_block_position_x")
            block_pose_stamped.pose.position.y = rospy.get_param("final_block_position_y")
            block_pose_stamped.pose.position.z = rospy.get_param("final_block_position_z")
        else:
            block_pose_stamped.pose.position = place_position

        # Convert graspit grasp to moveit grasp
        moveit_grasp_msg = self.graspit_grasp_to_moveit_grasp(object_name, graspit_grasp)

        # Execute pick on block
        success, pick_result = self.grasping_controller.execute_moveit_grasp(object_name, moveit_grasp_msg)
        # type: pick_result -> moveit_msgs.msg.PickupResult

        if not success:
            error_code = curpp.moveit_error_code_to_string(pick_result.error_code)
            rospy.logerr("Failed to execute pick. Reason: {}".format(error_code))
            return False
        else:
            rospy.loginfo("Successfully executed pick")

        rospy.loginfo("Placing block as position ({}, {}, {})"
                      .format(block_pose_stamped.pose.position.x,
                              block_pose_stamped.pose.position.y,
                              block_pose_stamped.pose.position.z))
        # Execute place on block
        success, place_result = self.grasping_controller.place(object_name, pick_result, block_pose_stamped)

        if not success:
            error_code = curpp.moveit_error_code_to_string(place_result.error_code)
            rospy.logerr("Failed to execute place. Reason: {}".format(error_code))
            return False
        else:
            rospy.loginfo("Successfully executed place")

        # Home arm and open hand
        success = self.grasping_controller.home_arm()
        if not success:
            rospy.logerr("Failed to home arm")
            return False
        else:
            rospy.loginfo("Successfully homed arm")

        success = self.grasping_controller.open_hand()
        if not success:
            rospy.logerr("Failed to open hand")
            return False
        else:
            rospy.loginfo("Successfully opened hand")

        return True

    def run_recognition(self):
        rospy.loginfo("Running recognition")

        self.world_manager_client.clear_objects()

        detected_blocks = block_recognition.find_blocks()
        # type: detected_blocks -> typing.List[block_recognition_msgs.msg.DetectedBlock]

        if len(detected_blocks) == 0:
            rospy.loginfo("Detected no blocks. No work done.")
            return []

        rospy.loginfo("Detected {} blocks".format(len(detected_blocks)))

        for detected_block in detected_blocks:
            # Add all blocks to the scene
            self.world_manager_client.add_box(detected_block.unique_block_name,
                                              detected_block.pose_stamped,
                                              detected_block.edge_length,
                                              detected_block.edge_length,
                                              detected_block.edge_length)

        # Return all detected blocks
        return detected_blocks
