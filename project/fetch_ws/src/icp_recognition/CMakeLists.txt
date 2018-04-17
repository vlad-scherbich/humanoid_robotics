cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(icp_recognition)

find_package()

include_directories(${})
link_directories(${})
add_definitions(${})

add_executable (icp_recognition icp_recognition.cpp)
target_link_libraries (icp_recognition ${})
