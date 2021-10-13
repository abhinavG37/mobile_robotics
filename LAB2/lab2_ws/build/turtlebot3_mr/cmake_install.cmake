# Install script for directory: /home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/turtlebot3_mr

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/turtlebot3_mr/catkin_generated/installspace/turtlebot3_mr.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_mr/cmake" TYPE FILE FILES
    "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/turtlebot3_mr/catkin_generated/installspace/turtlebot3_mrConfig.cmake"
    "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/build/turtlebot3_mr/catkin_generated/installspace/turtlebot3_mrConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_mr" TYPE FILE FILES "/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/src/turtlebot3_mr/package.xml")
endif()

