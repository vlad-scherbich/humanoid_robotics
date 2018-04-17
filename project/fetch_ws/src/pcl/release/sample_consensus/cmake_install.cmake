# Install script for directory: /home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_sample_consensus")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.8.1.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.8"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/lib/libpcl_sample_consensus.so.1.8.1.99"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/lib/libpcl_sample_consensus.so.1.8"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/lib/libpcl_sample_consensus.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.8.1.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.8"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/lib:"
           NEW_RPATH "/usr/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_sample_consensus")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/sample_consensus/pcl_sample_consensus-1.8.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_sample_consensus")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl/sample_consensus" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/boost.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/eigen.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/lmeds.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/method_types.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/mlesac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/model_types.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/msac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/ransac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/rmsac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/rransac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/prosac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_circle.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_circle3d.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_cylinder.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_cone.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_line.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_stick.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_parallel_plane.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_plane.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_sphere.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_parallel_line.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_parallel_plane.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_perpendicular_plane.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_plane.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_registration.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_registration_2d.h"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_sphere.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_sample_consensus")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl/sample_consensus/impl" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/lmeds.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/mlesac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/msac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/ransac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/rmsac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/rransac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/prosac.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_circle.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_circle3d.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_cylinder.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_cone.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_line.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_stick.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_parallel_plane.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_plane.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_sphere.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_parallel_line.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_parallel_plane.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_perpendicular_plane.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_plane.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_registration.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_registration_2d.hpp"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_sphere.hpp"
    )
endif()

