# Install script for directory: /home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/trajectory_gen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/trajectory_gen/msg" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/trajectory_gen/msg/messages.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/trajectory_gen/cmake" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/trajectory_gen-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/include/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/share/roseus/ros/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/share/common-lisp/ros/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/share/gennodejs/ros/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/lib/python3/dist-packages/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel/lib/python3/dist-packages/trajectory_gen")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/trajectory_gen.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/trajectory_gen/cmake" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/trajectory_gen-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/trajectory_gen/cmake" TYPE FILE FILES
    "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/trajectory_genConfig.cmake"
    "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/trajectory_genConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/trajectory_gen" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/trajectory_gen/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/trajectory_gen" TYPE PROGRAM FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/trajectory_gen/catkin_generated/installspace/subscriber_node.py")
endif()

