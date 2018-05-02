import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
#import moveit_commander

rospy.init_node('grasp_obj', anonymous=True)

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
    
    pose.pose.position.x += 0.05
    move_group_arm.moveToPose(pose, gripper_frame)
    result = move_group_arm.get_move_action().get_result()
    print result.error_code.val
    if result.error_code.val == MoveItErrorCodes.SUCCESS:
	print 'Moved to grasp position'
	#move_group_commander.set_named_target('close')
	#close_plan = move_group_commander.plan()
	#move_group_commander.execute(close_plan)
	print 'Graspit!!!'
	#commander.get_move_action().cancel_all_goals()
 	#sub.unregister()
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


