# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /home/friedel/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/friedel/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/friedel/devel/OpenXR_unified

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/friedel/devel/OpenXR_unified/build

# Include any dependencies generated for this target.
include aux/bindings/CMakeFiles/aux_generated_bindings.dir/depend.make
# Include the progress variables for this target.
include aux/bindings/CMakeFiles/aux_generated_bindings.dir/progress.make

# Include the compile flags for this target's objects.
include aux/bindings/CMakeFiles/aux_generated_bindings.dir/flags.make

aux/bindings/b_generated_bindings.c: /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.py
aux/bindings/b_generated_bindings.c: /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating b_generated_bindings.c"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && /usr/bin/python3.10 /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.py /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.json /home/friedel/devel/OpenXR_unified/build/aux/bindings/b_generated_bindings.c

aux/bindings/b_generated_bindings.h: /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.py
aux/bindings/b_generated_bindings.h: /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating b_generated_bindings.h"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && /usr/bin/python3.10 /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.py /home/friedel/devel/OpenXR_unified/aux/bindings/bindings.json /home/friedel/devel/OpenXR_unified/build/aux/bindings/b_generated_bindings.h

aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o: aux/bindings/CMakeFiles/aux_generated_bindings.dir/flags.make
aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o: aux/bindings/b_generated_bindings.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o -c /home/friedel/devel/OpenXR_unified/build/aux/bindings/b_generated_bindings.c

aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.i"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/friedel/devel/OpenXR_unified/build/aux/bindings/b_generated_bindings.c > CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.i

aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.s"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/friedel/devel/OpenXR_unified/build/aux/bindings/b_generated_bindings.c -o CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.s

# Object files for target aux_generated_bindings
aux_generated_bindings_OBJECTS = \
"CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o"

# External object files for target aux_generated_bindings
aux_generated_bindings_EXTERNAL_OBJECTS =

aux/bindings/libaux_generated_bindings.a: aux/bindings/CMakeFiles/aux_generated_bindings.dir/b_generated_bindings.c.o
aux/bindings/libaux_generated_bindings.a: aux/bindings/CMakeFiles/aux_generated_bindings.dir/build.make
aux/bindings/libaux_generated_bindings.a: aux/bindings/CMakeFiles/aux_generated_bindings.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libaux_generated_bindings.a"
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && $(CMAKE_COMMAND) -P CMakeFiles/aux_generated_bindings.dir/cmake_clean_target.cmake
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aux_generated_bindings.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aux/bindings/CMakeFiles/aux_generated_bindings.dir/build: aux/bindings/libaux_generated_bindings.a
.PHONY : aux/bindings/CMakeFiles/aux_generated_bindings.dir/build

aux/bindings/CMakeFiles/aux_generated_bindings.dir/clean:
	cd /home/friedel/devel/OpenXR_unified/build/aux/bindings && $(CMAKE_COMMAND) -P CMakeFiles/aux_generated_bindings.dir/cmake_clean.cmake
.PHONY : aux/bindings/CMakeFiles/aux_generated_bindings.dir/clean

aux/bindings/CMakeFiles/aux_generated_bindings.dir/depend: aux/bindings/b_generated_bindings.c
aux/bindings/CMakeFiles/aux_generated_bindings.dir/depend: aux/bindings/b_generated_bindings.h
	cd /home/friedel/devel/OpenXR_unified/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/friedel/devel/OpenXR_unified /home/friedel/devel/OpenXR_unified/aux/bindings /home/friedel/devel/OpenXR_unified/build /home/friedel/devel/OpenXR_unified/build/aux/bindings /home/friedel/devel/OpenXR_unified/build/aux/bindings/CMakeFiles/aux_generated_bindings.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : aux/bindings/CMakeFiles/aux_generated_bindings.dir/depend

