# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ino_serial: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iino_serial:/home/tzh/arduino_ws/src/ino_serial/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ino_serial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_custom_target(_ino_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ino_serial" "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ino_serial
  "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ino_serial
)

### Generating Services

### Generating Module File
_generate_module_cpp(ino_serial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ino_serial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ino_serial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ino_serial_generate_messages ino_serial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_dependencies(ino_serial_generate_messages_cpp _ino_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ino_serial_gencpp)
add_dependencies(ino_serial_gencpp ino_serial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ino_serial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ino_serial
  "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ino_serial
)

### Generating Services

### Generating Module File
_generate_module_eus(ino_serial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ino_serial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ino_serial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ino_serial_generate_messages ino_serial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_dependencies(ino_serial_generate_messages_eus _ino_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ino_serial_geneus)
add_dependencies(ino_serial_geneus ino_serial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ino_serial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ino_serial
  "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ino_serial
)

### Generating Services

### Generating Module File
_generate_module_lisp(ino_serial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ino_serial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ino_serial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ino_serial_generate_messages ino_serial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_dependencies(ino_serial_generate_messages_lisp _ino_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ino_serial_genlisp)
add_dependencies(ino_serial_genlisp ino_serial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ino_serial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ino_serial
  "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ino_serial
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ino_serial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ino_serial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ino_serial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ino_serial_generate_messages ino_serial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_dependencies(ino_serial_generate_messages_nodejs _ino_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ino_serial_gennodejs)
add_dependencies(ino_serial_gennodejs ino_serial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ino_serial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ino_serial
  "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ino_serial
)

### Generating Services

### Generating Module File
_generate_module_py(ino_serial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ino_serial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ino_serial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ino_serial_generate_messages ino_serial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/arduino_ws/src/ino_serial/msg/msg.msg" NAME_WE)
add_dependencies(ino_serial_generate_messages_py _ino_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ino_serial_genpy)
add_dependencies(ino_serial_genpy ino_serial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ino_serial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ino_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ino_serial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ino_serial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ino_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ino_serial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ino_serial_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ino_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ino_serial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ino_serial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ino_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ino_serial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ino_serial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ino_serial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ino_serial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ino_serial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ino_serial_generate_messages_py std_msgs_generate_messages_py)
endif()
