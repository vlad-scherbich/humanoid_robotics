import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
import moveit_commander

rospy.init_node('close_gripper', anonymous=True)

# Create move group interfaces for fetch
move_group_commander = moveit_commander.MoveGroupCommander('gripper')

# This is the wrist link not the gripper itself
move_group_commander.set_named_target('close')
close_plan = move_group_commander.plan()
move_group_commander.execute(close_plan)
	
