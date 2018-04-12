cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
set(ROS_BUILD_TYPE RelWithDebInfo)
rosbuild_init()

rosbuild_genmsg()
rosbuild_gensrv()

# add dynamic reconfigure api for hokuyo
rosbuild_find_ros_package(dynamic_reconfigure)
include(${dynamic_reconfigure_PACKAGE_PATH}/cmake/cfgbuild.cmake)
gencfg()

find_package(Eigen REQUIRED)
find_package(PCL REQUIRED)
include_directories(SYSTEM ${EIGEN_INCLUDE_DIRS}
                           ${PCL_INCLUDE_DIRS}
)

rosbuild_add_executable(bin/hokuyo_node src/hokuyo_node.cpp)
rosbuild_add_executable(bin/camera_synchronizer src/camera_synchronizer.cpp)
target_link_libraries(bin/camera_synchronizer vision_reconfigure)
rosbuild_add_library(vision_reconfigure src/vision_reconfigure.cpp)

add_definitions(-fPIC)

rosbuild_add_boost_directories()

rosbuild_add_library(gazebo_ros_camera_utils src/gazebo_ros_camera_utils.cpp)
target_link_libraries(gazebo_ros_camera_utils gazebo_sdf_interface)
rosbuild_link_boost(gazebo_ros_camera_utils thread)

rosbuild_add_library(gazebo_ros_camera src/gazebo_ros_camera.cpp)
target_link_libraries(gazebo_ros_camera gazebo_ros_camera_utils CameraPlugin)
rosbuild_link_boost(gazebo_ros_camera thread)

rosbuild_add_library(gazebo_ros_depth_camera src/gazebo_ros_depth_camera.cpp)
target_link_libraries(gazebo_ros_depth_camera gazebo_ros_camera_utils DepthCameraPlugin)
rosbuild_link_boost(gazebo_ros_depth_camera thread)

rosbuild_add_library(gazebo_ros_openni_kinect src/gazebo_ros_openni_kinect.cpp)
target_link_libraries(gazebo_ros_openni_kinect gazebo_ros_camera_utils DepthCameraPlugin)
rosbuild_link_boost(gazebo_ros_openni_kinect thread)

rosbuild_add_library(gazebo_ros_gpu_laser src/gazebo_ros_gpu_laser.cpp)
target_link_libraries(gazebo_ros_gpu_laser GpuRayPlugin)
rosbuild_link_boost(gazebo_ros_gpu_laser thread)

rosbuild_add_library(gazebo_ros_laser src/gazebo_ros_laser.cpp)
target_link_libraries(gazebo_ros_laser RayPlugin)
rosbuild_link_boost(gazebo_ros_laser thread)

rosbuild_add_library(gazebo_ros_block_laser src/gazebo_ros_block_laser.cpp)
target_link_libraries(gazebo_ros_block_laser RayPlugin)
rosbuild_link_boost(gazebo_ros_block_laser thread)

rosbuild_add_library(gazebo_ros_p3d src/gazebo_ros_p3d.cpp)
rosbuild_link_boost(gazebo_ros_p3d thread)
rosbuild_add_library(gazebo_ros_imu src/gazebo_ros_imu.cpp)
rosbuild_link_boost(gazebo_ros_imu thread)
rosbuild_add_library(gazebo_ros_f3d src/gazebo_ros_f3d.cpp)
rosbuild_link_boost(gazebo_ros_f3d thread)

rosbuild_add_library(move_model_test src/move_model_test.cpp)
rosbuild_add_library(pr2_pose_test src/pr2_pose_test.cpp)

rosbuild_add_library(gazebo_ros_bumper src/gazebo_ros_bumper.cpp)
target_link_libraries(gazebo_ros_bumper ContactPlugin)
rosbuild_link_boost(gazebo_ros_bumper thread)

rosbuild_add_library(gazebo_ros_template src/gazebo_ros_template.cpp)
rosbuild_link_boost(gazebo_ros_template thread)

rosbuild_add_library(gazebo_ros_projector src/gazebo_ros_projector.cpp)
rosbuild_link_boost(gazebo_ros_projector thread)

rosbuild_add_library(gazebo_ros_force src/gazebo_ros_force.cpp)
rosbuild_link_boost(gazebo_ros_force thread)

rosbuild_add_library(gazebo_ros_joint_trajectory src/gazebo_ros_joint_trajectory.cpp)
rosbuild_link_boost(gazebo_ros_joint_trajectory thread)
rosbuild_add_executable(bin/pub_joint_trajectory_test test/pub_joint_trajectory_test.cpp)

# rosbuild_add_executable(bin/gazebo_ros_diffdrive src/gazebo_ros_diffdrive.cpp)
# rosbuild_link_boost(bin/gazebo_ros_diffdrive thread)

exec_program("glxinfo" OUTPUT_VARIABLE glx_out RETURN_VALUE glx_val)
if(${glx_val} EQUAL 0)
  if(${glx_out} MATCHES "direct rendering: Yes")
    message(STATUS "run test here")
    rosbuild_add_rostest_labeled(gazebo test/p3d_test/test_3_single_pendulums.launch)
    rosbuild_add_rostest_labeled(gazebo test/p3d_test/test_single_pendulum.launch)
    rosbuild_add_rostest_labeled(gazebo test/p3d_test/test_3_double_pendulums.launch)
    rosbuild_add_rostest_labeled(gazebo test/p3d_test/test_double_pendulum.launch)
    rosbuild_add_rostest_labeled(gazebo test/bumper_test/test_bumper.launch)
  endif(${glx_out} MATCHES "direct rendering: Yes")
else(${glx_val} EQUAL 0)
  message(STATUS "no test here")
endif(${glx_val} EQUAL 0)




