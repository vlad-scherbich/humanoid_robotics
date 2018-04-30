# add object / gripper to GraspIt! and plan grasps
from geometry_msgs.msg import Pose
from graspit_commander import GraspitCommander

gc = GraspitCommander()
gc.clearWorld()

gc.importRobot('fetch_gripper')

pose = Pose()
pose.orientation.w = 1.0
gc.importGraspableBody("/home/vlad/Downloads/ycb_meshes/spam_12oz/meshes/spam_12oz.ply", pose)
graspit_grasps = gc.planGrasps(graspable_body_id=0)



# add Spam to MoveIt
import geometry_msgs.msg
import world_manager
from geometry_msgs.msg import Pose, Point, Quaternion
   
pose = geometry_msgs.msg.PoseStamped()
pose.header.frame_id='/base_link'
pose.pose = Pose(Point(0.042, 0.384, 0.826), Quaternion(0, 0, 0, 1))
world_manager.world_manager_client.add_mesh('spam', '/home/vlad/Downloads/spam_12oz.dae', pose)



### Using MoveIt to move arm -- this works by itsels, without using CURPP. The arm moves to this location.
import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion

rospy.init_node("hi")

move_group_arm = MoveGroupInterface("arm_with_torso", "base_link")

# This is the wrist link not the gripper itself
gripper_frame = 'wrist_roll_link'

# Construct a "pose_stamped" message as required by moveToPose
gripper_pose_stamped = PoseStamped()
gripper_pose_stamped.header.frame_id = 'spam'

gripper_pose_stamped.pose = graspit_grasps.grasps[2].pose

# Move gripper frame to the pose specified
move_group_arm.moveToPose(gripper_pose_stamped, gripper_frame)
result = move_group_arm.get_move_action().get_result()
