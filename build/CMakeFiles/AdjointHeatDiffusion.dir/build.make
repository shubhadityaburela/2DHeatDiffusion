# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build

# Include any dependencies generated for this target.
include CMakeFiles/AdjointHeatDiffusion.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AdjointHeatDiffusion.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AdjointHeatDiffusion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AdjointHeatDiffusion.dir/flags.make

CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/flags.make
CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o: ../main.cpp
CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o -MF CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o.d -o CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o -c /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/main.cpp

CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/main.cpp > CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.i

CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/main.cpp -o CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.s

CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/flags.make
CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o: ../probleminput.cpp
CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o -MF CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o.d -o CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o -c /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/probleminput.cpp

CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/probleminput.cpp > CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.i

CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/probleminput.cpp -o CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.s

CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/flags.make
CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o: ../grid.cpp
CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o -MF CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o.d -o CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o -c /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/grid.cpp

CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/grid.cpp > CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.i

CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/grid.cpp -o CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.s

CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/flags.make
CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o: ../pdesolve.cpp
CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o: CMakeFiles/AdjointHeatDiffusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o -MF CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o.d -o CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o -c /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/pdesolve.cpp

CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/pdesolve.cpp > CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.i

CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/pdesolve.cpp -o CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.s

# Object files for target AdjointHeatDiffusion
AdjointHeatDiffusion_OBJECTS = \
"CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o" \
"CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o" \
"CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o" \
"CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o"

# External object files for target AdjointHeatDiffusion
AdjointHeatDiffusion_EXTERNAL_OBJECTS =

AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/main.cpp.o
AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/probleminput.cpp.o
AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/grid.cpp.o
AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/pdesolve.cpp.o
AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/build.make
AdjointHeatDiffusion: CMakeFiles/AdjointHeatDiffusion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable AdjointHeatDiffusion"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AdjointHeatDiffusion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AdjointHeatDiffusion.dir/build: AdjointHeatDiffusion
.PHONY : CMakeFiles/AdjointHeatDiffusion.dir/build

CMakeFiles/AdjointHeatDiffusion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AdjointHeatDiffusion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AdjointHeatDiffusion.dir/clean

CMakeFiles/AdjointHeatDiffusion.dir/depend:
	cd /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build /Users/shubhadityaburela/Downloads/AdjointHeatDiffusion/build/CMakeFiles/AdjointHeatDiffusion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AdjointHeatDiffusion.dir/depend
