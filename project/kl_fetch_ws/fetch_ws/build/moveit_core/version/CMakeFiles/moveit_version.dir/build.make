# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kathleen/fetch_ws/src/moveit/moveit_core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kathleen/fetch_ws/build/moveit_core

# Include any dependencies generated for this target.
include version/CMakeFiles/moveit_version.dir/depend.make

# Include the progress variables for this target.
include version/CMakeFiles/moveit_version.dir/progress.make

# Include the compile flags for this target's objects.
include version/CMakeFiles/moveit_version.dir/flags.make

version/CMakeFiles/moveit_version.dir/version.cpp.o: version/CMakeFiles/moveit_version.dir/flags.make
version/CMakeFiles/moveit_version.dir/version.cpp.o: /home/kathleen/fetch_ws/src/moveit/moveit_core/version/version.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kathleen/fetch_ws/build/moveit_core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object version/CMakeFiles/moveit_version.dir/version.cpp.o"
	cd /home/kathleen/fetch_ws/build/moveit_core/version && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/moveit_version.dir/version.cpp.o -c /home/kathleen/fetch_ws/src/moveit/moveit_core/version/version.cpp

version/CMakeFiles/moveit_version.dir/version.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/moveit_version.dir/version.cpp.i"
	cd /home/kathleen/fetch_ws/build/moveit_core/version && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kathleen/fetch_ws/src/moveit/moveit_core/version/version.cpp > CMakeFiles/moveit_version.dir/version.cpp.i

version/CMakeFiles/moveit_version.dir/version.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/moveit_version.dir/version.cpp.s"
	cd /home/kathleen/fetch_ws/build/moveit_core/version && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kathleen/fetch_ws/src/moveit/moveit_core/version/version.cpp -o CMakeFiles/moveit_version.dir/version.cpp.s

version/CMakeFiles/moveit_version.dir/version.cpp.o.requires:

.PHONY : version/CMakeFiles/moveit_version.dir/version.cpp.o.requires

version/CMakeFiles/moveit_version.dir/version.cpp.o.provides: version/CMakeFiles/moveit_version.dir/version.cpp.o.requires
	$(MAKE) -f version/CMakeFiles/moveit_version.dir/build.make version/CMakeFiles/moveit_version.dir/version.cpp.o.provides.build
.PHONY : version/CMakeFiles/moveit_version.dir/version.cpp.o.provides

version/CMakeFiles/moveit_version.dir/version.cpp.o.provides.build: version/CMakeFiles/moveit_version.dir/version.cpp.o


# Object files for target moveit_version
moveit_version_OBJECTS = \
"CMakeFiles/moveit_version.dir/version.cpp.o"

# External object files for target moveit_version
moveit_version_EXTERNAL_OBJECTS =

/home/kathleen/fetch_ws/devel/.private/moveit_core/lib/moveit_core/moveit_version: version/CMakeFiles/moveit_version.dir/version.cpp.o
/home/kathleen/fetch_ws/devel/.private/moveit_core/lib/moveit_core/moveit_version: version/CMakeFiles/moveit_version.dir/build.make
/home/kathleen/fetch_ws/devel/.private/moveit_core/lib/moveit_core/moveit_version: version/CMakeFiles/moveit_version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kathleen/fetch_ws/build/moveit_core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kathleen/fetch_ws/devel/.private/moveit_core/lib/moveit_core/moveit_version"
	cd /home/kathleen/fetch_ws/build/moveit_core/version && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/moveit_version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
version/CMakeFiles/moveit_version.dir/build: /home/kathleen/fetch_ws/devel/.private/moveit_core/lib/moveit_core/moveit_version

.PHONY : version/CMakeFiles/moveit_version.dir/build

version/CMakeFiles/moveit_version.dir/requires: version/CMakeFiles/moveit_version.dir/version.cpp.o.requires

.PHONY : version/CMakeFiles/moveit_version.dir/requires

version/CMakeFiles/moveit_version.dir/clean:
	cd /home/kathleen/fetch_ws/build/moveit_core/version && $(CMAKE_COMMAND) -P CMakeFiles/moveit_version.dir/cmake_clean.cmake
.PHONY : version/CMakeFiles/moveit_version.dir/clean

version/CMakeFiles/moveit_version.dir/depend:
	cd /home/kathleen/fetch_ws/build/moveit_core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kathleen/fetch_ws/src/moveit/moveit_core /home/kathleen/fetch_ws/src/moveit/moveit_core/version /home/kathleen/fetch_ws/build/moveit_core /home/kathleen/fetch_ws/build/moveit_core/version /home/kathleen/fetch_ws/build/moveit_core/version/CMakeFiles/moveit_version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : version/CMakeFiles/moveit_version.dir/depend

