# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pr2_mechanism_controllers: 7 messages, 1 services")

set(MSG_I_FLAGS "-Ipr2_mechanism_controllers:/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pr2_mechanism_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" ""
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" ""
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" ""
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" ""
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_custom_target(_pr2_mechanism_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pr2_mechanism_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Services
_generate_srv_cpp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Module File
_generate_module_cpp(pr2_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pr2_mechanism_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pr2_mechanism_controllers_generate_messages pr2_mechanism_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_cpp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pr2_mechanism_controllers_gencpp)
add_dependencies(pr2_mechanism_controllers_gencpp pr2_mechanism_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_mechanism_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Services
_generate_srv_eus(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Module File
_generate_module_eus(pr2_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pr2_mechanism_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pr2_mechanism_controllers_generate_messages pr2_mechanism_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_eus _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pr2_mechanism_controllers_geneus)
add_dependencies(pr2_mechanism_controllers_geneus pr2_mechanism_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_mechanism_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Services
_generate_srv_lisp(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Module File
_generate_module_lisp(pr2_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pr2_mechanism_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pr2_mechanism_controllers_generate_messages pr2_mechanism_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_lisp _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pr2_mechanism_controllers_genlisp)
add_dependencies(pr2_mechanism_controllers_genlisp pr2_mechanism_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_mechanism_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Services
_generate_srv_nodejs(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Module File
_generate_module_nodejs(pr2_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pr2_mechanism_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pr2_mechanism_controllers_generate_messages pr2_mechanism_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pr2_mechanism_controllers_gennodejs)
add_dependencies(pr2_mechanism_controllers_gennodejs pr2_mechanism_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_mechanism_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)
_generate_msg_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Services
_generate_srv_py(pr2_mechanism_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
)

### Generating Module File
_generate_module_py(pr2_mechanism_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pr2_mechanism_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pr2_mechanism_controllers_generate_messages pr2_mechanism_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg" NAME_WE)
add_dependencies(pr2_mechanism_controllers_generate_messages_py _pr2_mechanism_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pr2_mechanism_controllers_genpy)
add_dependencies(pr2_mechanism_controllers_genpy pr2_mechanism_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_mechanism_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_mechanism_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pr2_mechanism_controllers_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pr2_mechanism_controllers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pr2_mechanism_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pr2_mechanism_controllers_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pr2_mechanism_controllers_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_mechanism_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pr2_mechanism_controllers_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pr2_mechanism_controllers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pr2_mechanism_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pr2_mechanism_controllers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_mechanism_controllers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pr2_mechanism_controllers_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pr2_mechanism_controllers_generate_messages_py std_msgs_generate_messages_py)
endif()
