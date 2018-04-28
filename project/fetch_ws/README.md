In GraspIt!, object location specified with:
x y z x y z quarternian
<pose frame=''>-0.01 -0.012 0.15 0 -0 0 1</pose>

For Gazebo (and MoveIt?), object location specified with:
x y z r(oll) p(itch) y(aw)
<pose frame=''>-0.01 -0.012 0.15 0 -0 0</pose> 


Steps:
Checkout my branch: vs/fetch_ws

To fix `world_manager`
(YOU DON'T NEED TO DO IT, BRANCH IS ALREADY UPDATED):
$ cd fetch_ws/src
$ mv moveit/ ../
$ mv moveit_python/ ../
$ catkin clean
$ rosdep install --from-paths src --ignore-src --rosdistro kinetic -y
$ catkin build

To fix world_manager.add_mesh():
ServiceException: service [/world_manager/add_mesh] responded with an error: error processing request: Pyassimp needs patch https://launchpadlibrarian.net/319496602/patchPyassim.txt

1) vim /usr/lib/python2.7/dist-packages/pyassimp/core.py
2) replace line as instructed in the diff above
3) restart everything if needed: Gazebo, GraspIt!, RViz

To see Fetch in RViz, when you get to it:
1) Add "Robot Model"

To see Spam in RViz:
1) Add "Planning Scene"

To see markers in RViz (visual debugging):
1) Add "Marker"


# 1st terminal
`one_table.world` file was modified by removing Coke can and adding Spam can (search 'spam_12oz.dae' in the file and replace with the path on your computer).
You need to convert .PLY meshes from YCB db given by David into .DAE for use in Gazebo: http://www.meshconvert.com/

GraspIt! and MoveIt accept both formats
$ roslaunch fetch_gazebo simulation.launch

# 2nd terminal: GraspIt!
$ roslaunch graspit_interface graspit_interface.launch

# 3rd terminal: RViz
$ roslaunch rviz rviz

# 4th terminal: add object / gripper to GraspIt! and plan grasps
$ ipython  # if not installed, highly recommended

from geometry_msgs.msg import Pose
from graspit_commander import GraspitCommander


gc = GraspitCommander()
gc.clearWorld()

gc.importRobot('fetch_gripper')

gc.autoOpen()

pose = Pose()
pose.orientation.w = 1.0

gc.importGraspableBody("/home/vlad/Downloads/ycb_meshes/spam_12oz/meshes/spam_12oz.ply", pose)

# you should get 20 plans this way
graspit_grasps = gc.planGrasps(graspable_body_id=0)

# first grasp plan
grasp = graspit_grasps.grasps[0]

# (2) add object mesh to MoveIt with world_manager
import geometry_msgs.msg
import world_manager
   
pose = geometry_msgs.msg.PoseStamped()
pose.header.frame_id='/base_link'
pose.pose = Pose(Point(0.875394, -0.421532, 0.770578), Quaternion(-0.007156, -0.003732, 0.002217, 1.0))

world_manager.world_manager_client.add_mesh('spam_12oz', '/home/vlad/Downloads/spam_12oz.dae', pose)

# (3) Manual move plans in MoveIt
(debugging basically, to see if I can move Fetch arm into ANY position at all)
- see move_to_poses.py

#(4) GraspIt! messages translated to MoveIt 
(what David said about using currp; I first DL'ed 'curpp' directly and tried using his library, but it gave me errors I couldn't resolve. So this is copy-paste of his code that tranlates GraspIt to MoveIt)
- see moveit_grasp.py
