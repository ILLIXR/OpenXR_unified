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
include external/CMakeFiles/xrt-external-nanopb.dir/depend.make
# Include the progress variables for this target.
include external/CMakeFiles/xrt-external-nanopb.dir/progress.make

# Include the compile flags for this target's objects.
include external/CMakeFiles/xrt-external-nanopb.dir/flags.make

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o: external/CMakeFiles/xrt-external-nanopb.dir/flags.make
external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o: /home/friedel/devel/OpenXR_unified/external/nanopb/monado_metrics.pb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o -c /home/friedel/devel/OpenXR_unified/external/nanopb/monado_metrics.pb.c

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.i"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/friedel/devel/OpenXR_unified/external/nanopb/monado_metrics.pb.c > CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.i

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.s"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/friedel/devel/OpenXR_unified/external/nanopb/monado_metrics.pb.c -o CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.s

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o: external/CMakeFiles/xrt-external-nanopb.dir/flags.make
external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o: /home/friedel/devel/OpenXR_unified/external/nanopb/pb_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o -c /home/friedel/devel/OpenXR_unified/external/nanopb/pb_common.c

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.i"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/friedel/devel/OpenXR_unified/external/nanopb/pb_common.c > CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.i

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.s"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/friedel/devel/OpenXR_unified/external/nanopb/pb_common.c -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.s

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o: external/CMakeFiles/xrt-external-nanopb.dir/flags.make
external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o: /home/friedel/devel/OpenXR_unified/external/nanopb/pb_decode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o -c /home/friedel/devel/OpenXR_unified/external/nanopb/pb_decode.c

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.i"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/friedel/devel/OpenXR_unified/external/nanopb/pb_decode.c > CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.i

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.s"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/friedel/devel/OpenXR_unified/external/nanopb/pb_decode.c -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.s

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o: external/CMakeFiles/xrt-external-nanopb.dir/flags.make
external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o: /home/friedel/devel/OpenXR_unified/external/nanopb/pb_encode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o -c /home/friedel/devel/OpenXR_unified/external/nanopb/pb_encode.c

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.i"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/friedel/devel/OpenXR_unified/external/nanopb/pb_encode.c > CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.i

external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.s"
	cd /home/friedel/devel/OpenXR_unified/build/external && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/friedel/devel/OpenXR_unified/external/nanopb/pb_encode.c -o CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.s

# Object files for target xrt-external-nanopb
xrt__external__nanopb_OBJECTS = \
"CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o" \
"CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o" \
"CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o" \
"CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o"

# External object files for target xrt-external-nanopb
xrt__external__nanopb_EXTERNAL_OBJECTS =

external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/nanopb/monado_metrics.pb.c.o
external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_common.c.o
external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_decode.c.o
external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/nanopb/pb_encode.c.o
external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/build.make
external/libxrt-external-nanopb.a: external/CMakeFiles/xrt-external-nanopb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/friedel/devel/OpenXR_unified/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libxrt-external-nanopb.a"
	cd /home/friedel/devel/OpenXR_unified/build/external && $(CMAKE_COMMAND) -P CMakeFiles/xrt-external-nanopb.dir/cmake_clean_target.cmake
	cd /home/friedel/devel/OpenXR_unified/build/external && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xrt-external-nanopb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/CMakeFiles/xrt-external-nanopb.dir/build: external/libxrt-external-nanopb.a
.PHONY : external/CMakeFiles/xrt-external-nanopb.dir/build

external/CMakeFiles/xrt-external-nanopb.dir/clean:
	cd /home/friedel/devel/OpenXR_unified/build/external && $(CMAKE_COMMAND) -P CMakeFiles/xrt-external-nanopb.dir/cmake_clean.cmake
.PHONY : external/CMakeFiles/xrt-external-nanopb.dir/clean

external/CMakeFiles/xrt-external-nanopb.dir/depend:
	cd /home/friedel/devel/OpenXR_unified/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/friedel/devel/OpenXR_unified /home/friedel/devel/OpenXR_unified/external /home/friedel/devel/OpenXR_unified/build /home/friedel/devel/OpenXR_unified/build/external /home/friedel/devel/OpenXR_unified/build/external/CMakeFiles/xrt-external-nanopb.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : external/CMakeFiles/xrt-external-nanopb.dir/depend

