# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cs_msgs: 0 messages, 3 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cs_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_custom_target(_cs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cs_msgs" "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_custom_target(_cs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cs_msgs" "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" ""
)

get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_custom_target(_cs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cs_msgs" "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs
)
_generate_srv_cpp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs
)
_generate_srv_cpp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs
)

### Generating Module File
_generate_module_cpp(cs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cs_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cs_msgs_generate_messages cs_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_cpp _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_cpp _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_cpp _cs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cs_msgs_gencpp)
add_dependencies(cs_msgs_gencpp cs_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cs_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs
)
_generate_srv_eus(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs
)
_generate_srv_eus(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs
)

### Generating Module File
_generate_module_eus(cs_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cs_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cs_msgs_generate_messages cs_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_eus _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_eus _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_eus _cs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cs_msgs_geneus)
add_dependencies(cs_msgs_geneus cs_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cs_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs
)
_generate_srv_lisp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs
)
_generate_srv_lisp(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs
)

### Generating Module File
_generate_module_lisp(cs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cs_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cs_msgs_generate_messages cs_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_lisp _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_lisp _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_lisp _cs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cs_msgs_genlisp)
add_dependencies(cs_msgs_genlisp cs_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cs_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs
)
_generate_srv_nodejs(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs
)
_generate_srv_nodejs(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs
)

### Generating Module File
_generate_module_nodejs(cs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cs_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cs_msgs_generate_messages cs_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_nodejs _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_nodejs _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_nodejs _cs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cs_msgs_gennodejs)
add_dependencies(cs_msgs_gennodejs cs_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cs_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs
)
_generate_srv_py(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs
)
_generate_srv_py(cs_msgs
  "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs
)

### Generating Module File
_generate_module_py(cs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cs_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cs_msgs_generate_messages cs_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Images.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_py _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Quality.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_py _cs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jgbroz/Documents/CS/catkin_ws_cs/src/cs_msgs/srv/Location.srv" NAME_WE)
add_dependencies(cs_msgs_generate_messages_py _cs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cs_msgs_genpy)
add_dependencies(cs_msgs_genpy cs_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cs_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cs_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cs_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cs_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cs_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cs_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cs_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cs_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cs_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cs_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cs_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
