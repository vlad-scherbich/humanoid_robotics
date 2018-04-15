Steps to build this workspace:

$ source /opt/ros/kinetic/setup.bash
$ cd pr2_ws
$ catkin init
$ rosdep install --from-paths src --ignore-src --rosdistro kinetic -y
$ catkin build
$ source devel/setup.bash

To launch PR2 in Gazebo and RViz:
# new terminal
$ roslaunch pr2_gazebo pr2_empty_world.launch
# new terminal
$ roslaunch pr2_moveit_config moveit_planning_execution.launch
