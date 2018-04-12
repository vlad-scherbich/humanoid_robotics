# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_mechanism_controllers: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_mechanism_controllers:/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_mechanism_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_custom_target(_robot_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" "std_msgs/MultiArrayDimension:geometry_msgs/PoseStamped:std_msgs/Header:std_msgs/MultiArrayLayout:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Float64MultiArray:geometry_msgs/Twist"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_mechanism_controllers
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_mechanism_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_mechanism_controllers_generate_messages robot_mechanism_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_dependencies(robot_mechanism_controllers_generate_messages_cpp _robot_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_mechanism_controllers_gencpp)
add_dependencies(robot_mechanism_controllers_gencpp robot_mechanism_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_mechanism_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_mechanism_controllers
)

### Generating Services

### Generating Module File
_generate_module_eus(robot_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_mechanism_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_mechanism_controllers_generate_messages robot_mechanism_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_dependencies(robot_mechanism_controllers_generate_messages_eus _robot_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_mechanism_controllers_geneus)
add_dependencies(robot_mechanism_controllers_geneus robot_mechanism_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_mechanism_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_mechanism_controllers
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_mechanism_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_mechanism_controllers_generate_messages robot_mechanism_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_dependencies(robot_mechanism_controllers_generate_messages_lisp _robot_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_mechanism_controllers_genlisp)
add_dependencies(robot_mechanism_controllers_genlisp robot_mechanism_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_mechanism_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_mechanism_controllers
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robot_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_mechanism_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_mechanism_controllers_generate_messages robot_mechanism_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_dependencies(robot_mechanism_controllers_generate_messages_nodejs _robot_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_mechanism_controllers_gennodejs)
add_dependencies(robot_mechanism_controllers_gennodejs robot_mechanism_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_mechanism_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_mechanism_controllers
)

### Generating Services

### Generating Module File
_generate_module_py(robot_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_mechanism_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_mechanism_controllers_generate_messages robot_mechanism_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/robot_mechanism_controllers/msg/JTCartesianControllerState.msg" NAME_WE)
add_dependencies(robot_mechanism_controllers_generate_messages_py _robot_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_mechanism_controllers_genpy)
add_dependencies(robot_mechanism_controllers_genpy robot_mechanism_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_mechanism_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_mechanism_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robot_mechanism_controllers_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_mechanism_controllers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_mechanism_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robot_mechanism_controllers_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_mechanism_controllers_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_mechanism_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robot_mechanism_controllers_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_mechanism_controllers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_mechanism_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robot_mechanism_controllers_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_mechanism_controllers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_mechanism_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_mechanism_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_mechanism_controllers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robot_mechanism_controllers_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_mechanism_controllers_generate_messages_py std_msgs_generate_messages_py)
endif()
