import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion


rospy.init_node('tuck_fetch', anonymous=True)

move_group_arm = MoveGroupInterface("arm_with_torso", "base_link")

# This is the wrist link not the gripper itself
gripper_frame = 'wrist_roll_link'

print 'tucking arm'
tuck = PoseStamped()
tuck.header.stamp = rospy.Time.now()
tuck.header.frame_id = 'base_link'
tuck.pose.position.x = 0.055351
tuck.pose.position.y = -0.139642 
tuck.pose.position.z = 0.571320
tuck.pose.orientation.x = -0.444832
tuck.pose.orientation.y = -1.492272
tuck.pose.orientation.z = 1.960757
tuck.pose.orientation.w = 0.0
move_group_arm.moveToPose(tuck, gripper_frame)
result = move_group_arm.get_move_action().get_result()

