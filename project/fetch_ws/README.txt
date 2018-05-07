Instructions for using gitman + build + catkin build
----------------------------------------------------
In fetch_ws/:
gitman install

cp -r files/* src/
mv src/graspit src/graspit_interface/

In graspit dir under graspit_interface:
export GRASPIT=$PWD
mkdir build
cd build
cmake ..
make -j5 (or, make -j8)

In fetch_ws/ again:
catkin build

On real robot: 
export ROS_MASTER_URI=http://fetch22.local:11311

