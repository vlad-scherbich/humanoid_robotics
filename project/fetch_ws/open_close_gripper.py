import rospy
import moveit_commander


rospy.init_node('temp')
move_group = moveit_commander.MoveGroupCommander('gripper')

# open gripper
move_group.set_named_target('open')
open_plan = move_group.plan()
move_group.execute(open_plan)

# close gripper
move_group.set_named_target('close')
close_plan = move_group.plan()
move_group.execute(close_plan)



# tuck arm
$ rosrun fetch_teleop tuck_arm
