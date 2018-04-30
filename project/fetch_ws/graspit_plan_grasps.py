# add Spam to MoveIt
import geometry_msgs.msg
import world_manager
   
pose = geometry_msgs.msg.PoseStamped()
pose.header.frame_id='/base_link'
"""
pose.pose.position.x = 0.875394 
pose.pose.position.y = -0.421532
pose.pose.position.z = 0.770578
pose.pose.orientation.x = -0.007156
pose.pose.orientation.y = -0.003732
pose.pose.orientation.z = 0.002217
pose.pose.orientation.w = 1.0
"""

# experiment with a valid (?) point in space
pose.pose.position.x = 0.900707 
pose.pose.position.y = 0.209838
pose.pose.position.z = 0.877578
pose.pose.orientation.x = 0.877578
pose.pose.orientation.y = -0.003732
pose.pose.orientation.z = 0.002217
pose.pose.orientation.w = 1.0

world_manager.world_manager_client.add_mesh('spam_12oz', '/home/vlad/Downloads/spam_12oz.dae', pose)                              
                                   

# add object / gripper to GraspIt! and plan grasps
from geometry_msgs.msg import Pose
from graspit_commander import GraspitCommander


gc = GraspitCommander()
gc.clearWorld()

gc.importRobot('fetch_gripper')

gc.autoOpen()

#position: <x y z>   orientation: <x y z w>
# GraspIt! works with it, while MoveIt requires normal orientation

pose = Pose()
pose.orientation.w = 1.0

gc.importGraspableBody("/home/vlad/Downloads/ycb_meshes/spam_12oz/meshes/spam_12oz.ply", pose)

graspit_grasps = gc.planGrasps(graspable_body_id=0)

