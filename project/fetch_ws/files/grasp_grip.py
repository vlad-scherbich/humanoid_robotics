import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
import actionlib
import control_msgs
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint



rospy.init_node('grasp_obj', anonymous=True)

class Gripper(object):
    """Gripper controls the robot's gripper.
    """
    MIN_EFFORT = 35  # Min grasp force, in Newtons
    MAX_EFFORT = 100  # Max grasp force, in Newtons

    def __init__(self):
        self._client = actionlib.SimpleActionClient(ACTION_SERVER, control_msgs.msg.GripperCommandAction)
        self._client.wait_for_server(rospy.Duration(10))

    def open(self):
        """Opens the gripper.
        """
        goal = control_msgs.msg.GripperCommandGoal()
        goal.command.position = OPENED_POS
        self._client.send_goal_and_wait(goal, rospy.Duration(10))

    def close(self, max_effort=MAX_EFFORT):
        """Closes the gripper.
        Args:
            max_effort: The maximum effort, in Newtons, to use. Note that this
                should not be less than 35N, or else the gripper may not close.
        """
        print max_effort
	goal = control_msgs.msg.GripperCommandGoal()
        goal.command.position = CLOSED_POS
        goal.command.max_effort = max_effort
	self._client.send_goal_and_wait(goal, rospy.Duration(10))

class FollowTrajectoryClient(object):

    def __init__(self, name, joint_names):
        self.client = actionlib.SimpleActionClient("%s/follow_joint_trajectory" % name, FollowJointTrajectoryAction)
        rospy.loginfo("Waiting for %s..." % name)
        self.client.wait_for_server()
        self.joint_names = joint_names

    def move_to(self, positions, duration=5.0):
        if len(self.joint_names) != len(positions):
            print("Invalid trajectory position")
            return False
        trajectory = JointTrajectory()
        trajectory.joint_names = self.joint_names
        trajectory.points.append(JointTrajectoryPoint())
        trajectory.points[0].positions = positions
        trajectory.points[0].velocities = [0.0 for _ in positions]
        trajectory.points[0].accelerations = [0.0 for _ in positions]
        trajectory.points[0].time_from_start = rospy.Duration(duration)
        follow_goal = FollowJointTrajectoryGoal()
        follow_goal.trajectory = trajectory

        self.client.send_goal(follow_goal)
        self.client.wait_for_result()

# Define ground plane
# This creates objects in the planning scene that mimic the ground
# If these were not in place gripper could hit the ground
planning_scene = PlanningSceneInterface("base_link")
planning_scene.removeCollisionObject("my_front_ground")
planning_scene.removeCollisionObject("my_back_ground")
planning_scene.removeCollisionObject("my_right_ground")
planning_scene.removeCollisionObject("my_left_ground")
planning_scene.addCube("my_front_ground", 2, 1.1, 0.0, -1.0)
planning_scene.addCube("my_back_ground", 2, -1.2, 0.0, -1.0)
planning_scene.addCube("my_left_ground", 2, 0.0, 1.2, -1.0)
planning_scene.addCube("my_right_ground", 2, 0.0, -1.2, -1.0)

CLOSED_POS = 0.08  # The position for a fully-closed gripper (meters).
OPENED_POS = 0.10  # The position for a fully-open gripper (meters).
ACTION_SERVER = 'gripper_controller/gripper_action'

print 'init node'
# Create move group interfaces for fetch
move_group_arm = MoveGroupInterface("arm_with_torso", "base_link")
#move_group_commander = moveit_commander.MoveGroupCommander('gripper')

# This is the wrist link not the gripper itself
gripper_frame = 'wrist_roll_link'

def callback(pose):
    print pose
    #pose.header.frame_id = 'base_link'
    
    Lwrist2gripper = 0.15

    reachable = PoseStamped()
    reachable = pose
    reachable.pose.position.x -= (Lwrist2gripper + 0.1)
    move_group_arm.moveToPose(reachable, gripper_frame)
    print 'Moved to reachable position'
    
    pose.pose.position.x += 0.10
    move_group_arm.moveToPose(pose, gripper_frame)
    result = move_group_arm.get_move_action().get_result()
    print result.error_code.val
    if result.error_code.val == MoveItErrorCodes.SUCCESS:
	print 'Moved to grasp position'
	print 'Graspit!!!'

	gp = Gripper()
	gp.open()
	gp.close(50)	
	
	print 'Raising after gripping'
	#torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
	#torso_action.move_to([0.40, ])
    print result

# Moving the robot arm into pre-grasp position

"""
reachable = PoseStamped()
#reachable = PoseStamped(Point(0.51309, 0.21209, 0.71091), Quaternion(-0.63887, 0.41228, -0.27836, 0.58685))
reachable.header.stamp = rospy.Time.now()
reachable.header.frame_id = 'base_link'
reachable.pose.position.x = 0.96165
reachable.pose.position.y = 0.0 
reachable.pose.position.z = 0.78601
reachable.pose.orientation.x = 0
reachable.pose.orientation.y = 0.0 
reachable.pose.orientation.z = 0.0 
reachable.pose.orientation.w = 1.0
move_group_arm.moveToPose(reachable, gripper_frame)
"""

print 'Planning grasp: '
#sub = rospy.Subscriber('pose_stamp', PoseStamped, callback)
msg = rospy.wait_for_message('pose_stamp', PoseStamped)
callback(msg)
rospy.spin()


