cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
set(ROS_BUILD_TYPE RelWithDebInfo)
rosbuild_init()
rosbuild_genmsg()
include_directories(msg/cpp)
rosbuild_gensrv()
include_directories(srv/cpp)

add_definitions(-fPIC)

rosbuild_add_boost_directories()

