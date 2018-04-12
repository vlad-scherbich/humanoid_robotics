cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
set(ROS_BUILD_TYPE RelWithDebInfo)
rosbuild_init()

rosbuild_genmsg()
rosbuild_gensrv()

rosbuild_add_boost_directories()


# add dynamic reconfigure api
rosbuild_find_ros_package(dynamic_reconfigure)
include(${dynamic_reconfigure_PACKAGE_PATH}/cmake/cfgbuild.cmake)
gencfg()

# Build Gazebo
set(USE_HG false)
if (USE_HG)
  execute_process(COMMAND cmake -E chdir ${PROJECT_SOURCE_DIR} make -f Makefile.gazebo.hg
                  RESULT_VARIABLE _make_failed)
  if(_make_failed)
    message(FATAL_ERROR "Build of Gazebo failed")
  endif(_make_failed)
else (USE_HG)
  execute_process(COMMAND cmake -E chdir ${PROJECT_SOURCE_DIR} make -f Makefile.gazebo.tarball
                  RESULT_VARIABLE _make_failed)
  if(_make_failed)
    message(FATAL_ERROR "Build of Gazebo failed")
  endif(_make_failed)
endif (USE_HG)

# Find the build flags for Gazebo server
include(FindPkgConfig)
set(ENV{PKG_CONFIG_PATH} "${PROJECT_SOURCE_DIR}/gazebo/lib/pkgconfig")
pkg_check_modules(GAZEBO_SERVER REQUIRED gazebo)
pkg_check_modules(GAZEBO_ODE REQUIRED gazebo_ode)
pkg_check_modules(GAZEBO_TRANSPORT REQUIRED gazebo_transport)
pkg_check_modules(XML libxml-2.0)

# add sources and link boost
rosbuild_add_library(gazebo_ros_api_plugin src/gazebo_ros_api_plugin.cpp)
rosbuild_link_boost(gazebo_ros_api_plugin thread)
add_dependencies(gazebo_ros_api_plugin build_gazebo)
rosbuild_add_compile_flags(gazebo_ros_api_plugin ${GAZEBO_TRANSPORT_CFLAGS_OTHERS} ${GAZEBO_TRANSPORT_CFLAGS} ${GAZEBO_SERVER_CFLAGS_OTHERS} ${GAZEBO_SERVER_CFLAGS})
target_link_libraries(gazebo_ros_api_plugin ${GAZEBO_TRANSPORT_LIBRARIES} ${GAZEBO_SERVER_LIBRARIES})
rosbuild_add_link_flags(gazebo_ros_api_plugin ${GAZEBO_TRANSPORT_LDFLAGS_OTHERS} ${GAZEBO_TRANSPORT_LDFLAGS} ${GAZEBO_SERVER_LDFLAGS_OTHERS} ${GAZEBO_SERVER_LDFLAGS})

rosbuild_add_library(gazebo_ros_paths_plugin src/gazebo_ros_paths_plugin.cpp)
rosbuild_add_compile_flags(gazebo_ros_paths_plugin ${GAZEBO_SERVER_CFLAGS_OTHERS} ${GAZEBO_SERVER_CFLAGS})
target_link_libraries(gazebo_ros_paths_plugin ${GAZEBO_SERVER_LIBRARIES})
rosbuild_add_link_flags(gazebo_ros_paths_plugin ${GAZEBO_SERVER_LDFLAGS_OTHERS} ${GAZEBO_SERVER_LDFLAGS})

