execute_process(COMMAND "/home/kathleen/catkin_ws/build/pr2_tuck_arms_action/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kathleen/catkin_ws/build/pr2_tuck_arms_action/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
