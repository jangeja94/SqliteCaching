# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jangeja/School/CSC560/quarterProject/Development/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jangeja/School/CSC560/quarterProject/Development/test/build

# Include any dependencies generated for this target.
include CMakeFiles/speedTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/speedTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/speedTest.dir/flags.make

CMakeFiles/speedTest.dir/speedTest.cpp.o: CMakeFiles/speedTest.dir/flags.make
CMakeFiles/speedTest.dir/speedTest.cpp.o: ../speedTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jangeja/School/CSC560/quarterProject/Development/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/speedTest.dir/speedTest.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/speedTest.dir/speedTest.cpp.o -c /Users/jangeja/School/CSC560/quarterProject/Development/test/speedTest.cpp

CMakeFiles/speedTest.dir/speedTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/speedTest.dir/speedTest.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jangeja/School/CSC560/quarterProject/Development/test/speedTest.cpp > CMakeFiles/speedTest.dir/speedTest.cpp.i

CMakeFiles/speedTest.dir/speedTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/speedTest.dir/speedTest.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jangeja/School/CSC560/quarterProject/Development/test/speedTest.cpp -o CMakeFiles/speedTest.dir/speedTest.cpp.s

CMakeFiles/speedTest.dir/speedTest.cpp.o.requires:

.PHONY : CMakeFiles/speedTest.dir/speedTest.cpp.o.requires

CMakeFiles/speedTest.dir/speedTest.cpp.o.provides: CMakeFiles/speedTest.dir/speedTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/speedTest.dir/build.make CMakeFiles/speedTest.dir/speedTest.cpp.o.provides.build
.PHONY : CMakeFiles/speedTest.dir/speedTest.cpp.o.provides

CMakeFiles/speedTest.dir/speedTest.cpp.o.provides.build: CMakeFiles/speedTest.dir/speedTest.cpp.o


# Object files for target speedTest
speedTest_OBJECTS = \
"CMakeFiles/speedTest.dir/speedTest.cpp.o"

# External object files for target speedTest
speedTest_EXTERNAL_OBJECTS = \
"/Users/jangeja/School/CSC560/quarterProject/Development/test/sqlite3.o"

speedTest: CMakeFiles/speedTest.dir/speedTest.cpp.o
speedTest: ../sqlite3.o
speedTest: CMakeFiles/speedTest.dir/build.make
speedTest: CMakeFiles/speedTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jangeja/School/CSC560/quarterProject/Development/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable speedTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/speedTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/speedTest.dir/build: speedTest

.PHONY : CMakeFiles/speedTest.dir/build

CMakeFiles/speedTest.dir/requires: CMakeFiles/speedTest.dir/speedTest.cpp.o.requires

.PHONY : CMakeFiles/speedTest.dir/requires

CMakeFiles/speedTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/speedTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/speedTest.dir/clean

CMakeFiles/speedTest.dir/depend:
	cd /Users/jangeja/School/CSC560/quarterProject/Development/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jangeja/School/CSC560/quarterProject/Development/test /Users/jangeja/School/CSC560/quarterProject/Development/test /Users/jangeja/School/CSC560/quarterProject/Development/test/build /Users/jangeja/School/CSC560/quarterProject/Development/test/build /Users/jangeja/School/CSC560/quarterProject/Development/test/build/CMakeFiles/speedTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/speedTest.dir/depend
