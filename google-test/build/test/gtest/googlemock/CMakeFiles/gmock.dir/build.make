# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/aschhoka/Documents/473-A1/473-exercise-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aschhoka/Documents/473-A1/473-exercise-1/build2

# Include any dependencies generated for this target.
include test/gtest/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include test/gtest/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include test/gtest/googlemock/CMakeFiles/gmock.dir/flags.make

test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: test/gtest/googlemock/CMakeFiles/gmock.dir/flags.make
test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: ../test/gtest/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aschhoka/Documents/473-A1/473-exercise-1/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /home/aschhoka/Documents/473-A1/473-exercise-1/test/gtest/googlemock/src/gmock-all.cc

test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aschhoka/Documents/473-A1/473-exercise-1/test/gtest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aschhoka/Documents/473-A1/473-exercise-1/test/gtest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib/libgmock.a: test/gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
lib/libgmock.a: test/gtest/googlemock/CMakeFiles/gmock.dir/build.make
lib/libgmock.a: test/gtest/googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aschhoka/Documents/473-A1/473-exercise-1/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgmock.a"
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/gtest/googlemock/CMakeFiles/gmock.dir/build: lib/libgmock.a

.PHONY : test/gtest/googlemock/CMakeFiles/gmock.dir/build

test/gtest/googlemock/CMakeFiles/gmock.dir/clean:
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : test/gtest/googlemock/CMakeFiles/gmock.dir/clean

test/gtest/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/aschhoka/Documents/473-A1/473-exercise-1/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aschhoka/Documents/473-A1/473-exercise-1 /home/aschhoka/Documents/473-A1/473-exercise-1/test/gtest/googlemock /home/aschhoka/Documents/473-A1/473-exercise-1/build2 /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/gtest/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gtest/googlemock/CMakeFiles/gmock.dir/depend

