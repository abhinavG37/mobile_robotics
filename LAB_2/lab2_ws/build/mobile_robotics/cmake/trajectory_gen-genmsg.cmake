# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trajectory_gen: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itrajectory_gen:/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trajectory_gen_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_custom_target(_trajectory_gen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_gen" "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trajectory_gen
  "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_gen
)

### Generating Services

### Generating Module File
_generate_module_cpp(trajectory_gen
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_gen
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trajectory_gen_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trajectory_gen_generate_messages trajectory_gen_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_dependencies(trajectory_gen_generate_messages_cpp _trajectory_gen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_gen_gencpp)
add_dependencies(trajectory_gen_gencpp trajectory_gen_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_gen_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trajectory_gen
  "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_gen
)

### Generating Services

### Generating Module File
_generate_module_eus(trajectory_gen
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_gen
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trajectory_gen_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trajectory_gen_generate_messages trajectory_gen_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_dependencies(trajectory_gen_generate_messages_eus _trajectory_gen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_gen_geneus)
add_dependencies(trajectory_gen_geneus trajectory_gen_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_gen_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trajectory_gen
  "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_gen
)

### Generating Services

### Generating Module File
_generate_module_lisp(trajectory_gen
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_gen
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trajectory_gen_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trajectory_gen_generate_messages trajectory_gen_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_dependencies(trajectory_gen_generate_messages_lisp _trajectory_gen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_gen_genlisp)
add_dependencies(trajectory_gen_genlisp trajectory_gen_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_gen_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trajectory_gen
  "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_gen
)

### Generating Services

### Generating Module File
_generate_module_nodejs(trajectory_gen
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_gen
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trajectory_gen_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trajectory_gen_generate_messages trajectory_gen_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_dependencies(trajectory_gen_generate_messages_nodejs _trajectory_gen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_gen_gennodejs)
add_dependencies(trajectory_gen_gennodejs trajectory_gen_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_gen_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trajectory_gen
  "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_gen
)

### Generating Services

### Generating Module File
_generate_module_py(trajectory_gen
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_gen
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trajectory_gen_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trajectory_gen_generate_messages trajectory_gen_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/mobile_robotics/msg/messages.msg" NAME_WE)
add_dependencies(trajectory_gen_generate_messages_py _trajectory_gen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_gen_genpy)
add_dependencies(trajectory_gen_genpy trajectory_gen_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_gen_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_gen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_gen
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trajectory_gen_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_gen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_gen
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trajectory_gen_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_gen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_gen
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trajectory_gen_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_gen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_gen
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_gen_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_gen)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_gen\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_gen
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trajectory_gen_generate_messages_py std_msgs_generate_messages_py)
endif()
