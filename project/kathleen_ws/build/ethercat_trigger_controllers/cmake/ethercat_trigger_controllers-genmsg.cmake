# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ethercat_trigger_controllers: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iethercat_trigger_controllers:/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ethercat_trigger_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_custom_target(_ethercat_trigger_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethercat_trigger_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" ""
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_custom_target(_ethercat_trigger_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethercat_trigger_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" "ethercat_trigger_controllers/MultiWaveformTransition"
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_custom_target(_ethercat_trigger_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethercat_trigger_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" "ethercat_trigger_controllers/MultiWaveform:ethercat_trigger_controllers/MultiWaveformTransition"
)

get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_custom_target(_ethercat_trigger_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ethercat_trigger_controllers" "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_msg_cpp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Services
_generate_srv_cpp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg;/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_srv_cpp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Module File
_generate_module_cpp(ethercat_trigger_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ethercat_trigger_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ethercat_trigger_controllers_generate_messages ethercat_trigger_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_cpp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_cpp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_cpp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_cpp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethercat_trigger_controllers_gencpp)
add_dependencies(ethercat_trigger_controllers_gencpp ethercat_trigger_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethercat_trigger_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_msg_eus(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Services
_generate_srv_eus(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg;/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_srv_eus(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Module File
_generate_module_eus(ethercat_trigger_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ethercat_trigger_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ethercat_trigger_controllers_generate_messages ethercat_trigger_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_eus _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_eus _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_eus _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_eus _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethercat_trigger_controllers_geneus)
add_dependencies(ethercat_trigger_controllers_geneus ethercat_trigger_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethercat_trigger_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_msg_lisp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Services
_generate_srv_lisp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg;/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_srv_lisp(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Module File
_generate_module_lisp(ethercat_trigger_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ethercat_trigger_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ethercat_trigger_controllers_generate_messages ethercat_trigger_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_lisp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_lisp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_lisp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_lisp _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethercat_trigger_controllers_genlisp)
add_dependencies(ethercat_trigger_controllers_genlisp ethercat_trigger_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethercat_trigger_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_msg_nodejs(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Services
_generate_srv_nodejs(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg;/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_srv_nodejs(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Module File
_generate_module_nodejs(ethercat_trigger_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ethercat_trigger_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ethercat_trigger_controllers_generate_messages ethercat_trigger_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_nodejs _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_nodejs _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_nodejs _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_nodejs _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethercat_trigger_controllers_gennodejs)
add_dependencies(ethercat_trigger_controllers_gennodejs ethercat_trigger_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethercat_trigger_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_msg_py(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Services
_generate_srv_py(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv"
  "${MSG_I_FLAGS}"
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg;/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
)
_generate_srv_py(ethercat_trigger_controllers
  "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
)

### Generating Module File
_generate_module_py(ethercat_trigger_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ethercat_trigger_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ethercat_trigger_controllers_generate_messages ethercat_trigger_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveformTransition.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_py _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/msg/MultiWaveform.msg" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_py _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetMultiWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_py _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kathleen/catkin_ws/src/pr2_controllers/ethercat_trigger_controllers/srv/SetWaveform.srv" NAME_WE)
add_dependencies(ethercat_trigger_controllers_generate_messages_py _ethercat_trigger_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ethercat_trigger_controllers_genpy)
add_dependencies(ethercat_trigger_controllers_genpy ethercat_trigger_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ethercat_trigger_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ethercat_trigger_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ethercat_trigger_controllers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ethercat_trigger_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ethercat_trigger_controllers_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ethercat_trigger_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ethercat_trigger_controllers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ethercat_trigger_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ethercat_trigger_controllers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ethercat_trigger_controllers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ethercat_trigger_controllers_generate_messages_py std_msgs_generate_messages_py)
endif()
