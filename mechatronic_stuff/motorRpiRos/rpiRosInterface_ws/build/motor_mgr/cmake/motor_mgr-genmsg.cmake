# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motor_mgr: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motor_mgr_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_custom_target(_motor_mgr_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_mgr" "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(motor_mgr
  "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_mgr
)

### Generating Module File
_generate_module_cpp(motor_mgr
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_mgr
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motor_mgr_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motor_mgr_generate_messages motor_mgr_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_dependencies(motor_mgr_generate_messages_cpp _motor_mgr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_mgr_gencpp)
add_dependencies(motor_mgr_gencpp motor_mgr_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_mgr_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(motor_mgr
  "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_mgr
)

### Generating Module File
_generate_module_eus(motor_mgr
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_mgr
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(motor_mgr_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(motor_mgr_generate_messages motor_mgr_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_dependencies(motor_mgr_generate_messages_eus _motor_mgr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_mgr_geneus)
add_dependencies(motor_mgr_geneus motor_mgr_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_mgr_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(motor_mgr
  "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_mgr
)

### Generating Module File
_generate_module_lisp(motor_mgr
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_mgr
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motor_mgr_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motor_mgr_generate_messages motor_mgr_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_dependencies(motor_mgr_generate_messages_lisp _motor_mgr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_mgr_genlisp)
add_dependencies(motor_mgr_genlisp motor_mgr_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_mgr_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(motor_mgr
  "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_mgr
)

### Generating Module File
_generate_module_nodejs(motor_mgr
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_mgr
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(motor_mgr_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(motor_mgr_generate_messages motor_mgr_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_dependencies(motor_mgr_generate_messages_nodejs _motor_mgr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_mgr_gennodejs)
add_dependencies(motor_mgr_gennodejs motor_mgr_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_mgr_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(motor_mgr
  "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_mgr
)

### Generating Module File
_generate_module_py(motor_mgr
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_mgr
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motor_mgr_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motor_mgr_generate_messages motor_mgr_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv" NAME_WE)
add_dependencies(motor_mgr_generate_messages_py _motor_mgr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_mgr_genpy)
add_dependencies(motor_mgr_genpy motor_mgr_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_mgr_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_mgr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_mgr
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(motor_mgr_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_mgr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_mgr
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(motor_mgr_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_mgr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_mgr
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(motor_mgr_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_mgr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_mgr
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(motor_mgr_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_mgr)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_mgr\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_mgr
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(motor_mgr_generate_messages_py std_msgs_generate_messages_py)
endif()
