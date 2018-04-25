import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion

#rospy.init_node("hi")

move_group = MoveGroupInterface("arm_with_torso", "base_link")

# This is the wrist link not the gripper itself
gripper_frame = 'wrist_roll_link'
# Position and rotation of two "wave end poses"
#gripper_pose = Pose(Point(1.191, -0.421, 0.772), Quaternion(-0.007, -0.003, 0.002, 1.0))

# Construct a "pose_stamped" message as required by moveToPose
gripper_pose_stamped = PoseStamped()
gripper_pose_stamped.header.frame_id = 'base_link'


### random locations
# Finish building the Pose_stamped message
# If the message stamp is not current it could be ignored
gripper_pose_stamped.header.stamp = rospy.Time.now()

# kind of works
#gripper_pose = Pose(Point(0.900707, 0.209838, 0.877578), Quaternion(0.877578, -0.003732, 0.002217, 1.0))

gripper_pose_stamped.header.stamp = rospy.Time.now()

#gripper_pose = Pose(Point(1.169531, 0.212479, 1.164348), Quaternion(-0.007156, -0.003732, 0.002217, 1.0))

gripper_pose = Pose(Point(1.169531, 0.212479, 1.164348), Quaternion(-0.007156, -0.003732, 0.002217, 1.0))

gripper_pose_stamped.pose = gripper_pose

# Move gripper frame to the pose specified
move_group.moveToPose(gripper_pose_stamped, gripper_frame)
result = move_group.get_move_action().get_result()



# check all the grasp plans:
for pose in gripper_poses:
    # Finish building the Pose_stamped message
    # If the message stamp is not current it could be ignored
    gripper_pose_stamped.header.stamp = rospy.Time.now()
    # Set the message pose
    gripper_pose_stamped.pose = pose

    # Move gripper frame to the pose specified
    move_group.moveToPose(gripper_pose_stamped, gripper_frame)
    result = move_group.get_move_action().get_result()




