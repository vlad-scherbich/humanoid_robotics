execute_process(COMMAND "/home/kathleen/humanoid_robotics/project/fetch_ws/build/moveit_ros_visualization/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kathleen/humanoid_robotics/project/fetch_ws/build/moveit_ros_visualization/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
