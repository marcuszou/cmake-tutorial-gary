# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build

# Include any dependencies generated for this target.
include CMakeFiles/hellow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hellow.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hellow.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hellow.dir/flags.make

CMakeFiles/hellow.dir/hellow.c.o: CMakeFiles/hellow.dir/flags.make
CMakeFiles/hellow.dir/hellow.c.o: /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/hellow.c
CMakeFiles/hellow.dir/hellow.c.o: CMakeFiles/hellow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hellow.dir/hellow.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hellow.dir/hellow.c.o -MF CMakeFiles/hellow.dir/hellow.c.o.d -o CMakeFiles/hellow.dir/hellow.c.o -c /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/hellow.c

CMakeFiles/hellow.dir/hellow.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/hellow.dir/hellow.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/hellow.c > CMakeFiles/hellow.dir/hellow.c.i

CMakeFiles/hellow.dir/hellow.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/hellow.dir/hellow.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/hellow.c -o CMakeFiles/hellow.dir/hellow.c.s

# Object files for target hellow
hellow_OBJECTS = \
"CMakeFiles/hellow.dir/hellow.c.o"

# External object files for target hellow
hellow_EXTERNAL_OBJECTS =

hellow: CMakeFiles/hellow.dir/hellow.c.o
hellow: CMakeFiles/hellow.dir/build.make
hellow: CMakeFiles/hellow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hellow"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hellow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hellow.dir/build: hellow
.PHONY : CMakeFiles/hellow.dir/build

CMakeFiles/hellow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hellow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hellow.dir/clean

CMakeFiles/hellow.dir/depend:
	cd /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build /Users/marcus/Desktop/projects/cmake-tutorial-gary/hellow/build/CMakeFiles/hellow.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/hellow.dir/depend
