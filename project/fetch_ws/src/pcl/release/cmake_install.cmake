# Install script for directory: /home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_common")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl" TYPE FILE FILES "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/include/pcl/pcl_config.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pclconfig")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.8/Modules" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindRSSDK.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindG2O.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindEigen.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindGLEW.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindSphinx.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindGtest.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindSuiteSparse.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindFZAPI.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindDSSDK.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindQhull.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindFLANN.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindPcap.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindOpenNI2.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindQVTK.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindEnsenso.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/Findlibusb-1.0.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindGTSAM.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FindOpenNI.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/cmake/Modules/FinddavidSDK.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pclconfig")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.8" TYPE FILE FILES
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/PCLConfig.cmake"
    "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/PCLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/test/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/common/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/octree/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/io/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/kdtree/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/geometry/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/search/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/visualization/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/sample_consensus/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/filters/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/2d/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/features/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/ml/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/segmentation/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/people/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/gpu/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/tracking/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/stereo/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/surface/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/registration/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/recognition/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/keypoints/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/tools/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/simulation/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/apps/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/cuda/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/outofcore/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/examples/cmake_install.cmake")
  include("/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kathleen/humanoid_robotics/project/fetch_ws/src/pcl/release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
