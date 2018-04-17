# Install script for directory: /home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "None")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_2d")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/2d/pcl_2d-1.8.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_2d")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl/2d" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/convolution.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/kernel.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/edge.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/morphology.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_2d")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl/2d/impl" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/impl/convolution.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/impl/edge.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/2d/include/pcl/2d/impl/morphology.hpp"
    )
endif()

