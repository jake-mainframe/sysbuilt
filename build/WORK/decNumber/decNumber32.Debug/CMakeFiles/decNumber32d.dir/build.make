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
CMAKE_SOURCE_DIR = /home/jake/sysgen/build/decNumber

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug

# Include any dependencies generated for this target.
include CMakeFiles/decNumber32d.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/decNumber32d.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/decNumber32d.dir/flags.make

CMakeFiles/decNumber32d.dir/decnumber_version.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/decnumber_version.c.o: /home/jake/sysgen/build/decNumber/decnumber_version.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/decNumber32d.dir/decnumber_version.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/decnumber_version.c.o   -c /home/jake/sysgen/build/decNumber/decnumber_version.c

CMakeFiles/decNumber32d.dir/decnumber_version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/decnumber_version.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/decnumber_version.c > CMakeFiles/decNumber32d.dir/decnumber_version.c.i

CMakeFiles/decNumber32d.dir/decnumber_version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/decnumber_version.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/decnumber_version.c -o CMakeFiles/decNumber32d.dir/decnumber_version.c.s

CMakeFiles/decNumber32d.dir/source/decContext.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decContext.c.o: /home/jake/sysgen/build/decNumber/source/decContext.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/decNumber32d.dir/source/decContext.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decContext.c.o   -c /home/jake/sysgen/build/decNumber/source/decContext.c

CMakeFiles/decNumber32d.dir/source/decContext.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decContext.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decContext.c > CMakeFiles/decNumber32d.dir/source/decContext.c.i

CMakeFiles/decNumber32d.dir/source/decContext.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decContext.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decContext.c -o CMakeFiles/decNumber32d.dir/source/decContext.c.s

CMakeFiles/decNumber32d.dir/source/decDouble.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decDouble.c.o: /home/jake/sysgen/build/decNumber/source/decDouble.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/decNumber32d.dir/source/decDouble.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decDouble.c.o   -c /home/jake/sysgen/build/decNumber/source/decDouble.c

CMakeFiles/decNumber32d.dir/source/decDouble.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decDouble.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decDouble.c > CMakeFiles/decNumber32d.dir/source/decDouble.c.i

CMakeFiles/decNumber32d.dir/source/decDouble.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decDouble.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decDouble.c -o CMakeFiles/decNumber32d.dir/source/decDouble.c.s

CMakeFiles/decNumber32d.dir/source/decNumber.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decNumber.c.o: /home/jake/sysgen/build/decNumber/source/decNumber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/decNumber32d.dir/source/decNumber.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decNumber.c.o   -c /home/jake/sysgen/build/decNumber/source/decNumber.c

CMakeFiles/decNumber32d.dir/source/decNumber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decNumber.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decNumber.c > CMakeFiles/decNumber32d.dir/source/decNumber.c.i

CMakeFiles/decNumber32d.dir/source/decNumber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decNumber.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decNumber.c -o CMakeFiles/decNumber32d.dir/source/decNumber.c.s

CMakeFiles/decNumber32d.dir/source/decPacked.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decPacked.c.o: /home/jake/sysgen/build/decNumber/source/decPacked.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/decNumber32d.dir/source/decPacked.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decPacked.c.o   -c /home/jake/sysgen/build/decNumber/source/decPacked.c

CMakeFiles/decNumber32d.dir/source/decPacked.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decPacked.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decPacked.c > CMakeFiles/decNumber32d.dir/source/decPacked.c.i

CMakeFiles/decNumber32d.dir/source/decPacked.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decPacked.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decPacked.c -o CMakeFiles/decNumber32d.dir/source/decPacked.c.s

CMakeFiles/decNumber32d.dir/source/decQuad.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decQuad.c.o: /home/jake/sysgen/build/decNumber/source/decQuad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/decNumber32d.dir/source/decQuad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decQuad.c.o   -c /home/jake/sysgen/build/decNumber/source/decQuad.c

CMakeFiles/decNumber32d.dir/source/decQuad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decQuad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decQuad.c > CMakeFiles/decNumber32d.dir/source/decQuad.c.i

CMakeFiles/decNumber32d.dir/source/decQuad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decQuad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decQuad.c -o CMakeFiles/decNumber32d.dir/source/decQuad.c.s

CMakeFiles/decNumber32d.dir/source/decSingle.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decSingle.c.o: /home/jake/sysgen/build/decNumber/source/decSingle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/decNumber32d.dir/source/decSingle.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decSingle.c.o   -c /home/jake/sysgen/build/decNumber/source/decSingle.c

CMakeFiles/decNumber32d.dir/source/decSingle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decSingle.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decSingle.c > CMakeFiles/decNumber32d.dir/source/decSingle.c.i

CMakeFiles/decNumber32d.dir/source/decSingle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decSingle.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decSingle.c -o CMakeFiles/decNumber32d.dir/source/decSingle.c.s

CMakeFiles/decNumber32d.dir/source/decimal128.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decimal128.c.o: /home/jake/sysgen/build/decNumber/source/decimal128.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/decNumber32d.dir/source/decimal128.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decimal128.c.o   -c /home/jake/sysgen/build/decNumber/source/decimal128.c

CMakeFiles/decNumber32d.dir/source/decimal128.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decimal128.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decimal128.c > CMakeFiles/decNumber32d.dir/source/decimal128.c.i

CMakeFiles/decNumber32d.dir/source/decimal128.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decimal128.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decimal128.c -o CMakeFiles/decNumber32d.dir/source/decimal128.c.s

CMakeFiles/decNumber32d.dir/source/decimal32.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decimal32.c.o: /home/jake/sysgen/build/decNumber/source/decimal32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/decNumber32d.dir/source/decimal32.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decimal32.c.o   -c /home/jake/sysgen/build/decNumber/source/decimal32.c

CMakeFiles/decNumber32d.dir/source/decimal32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decimal32.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decimal32.c > CMakeFiles/decNumber32d.dir/source/decimal32.c.i

CMakeFiles/decNumber32d.dir/source/decimal32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decimal32.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decimal32.c -o CMakeFiles/decNumber32d.dir/source/decimal32.c.s

CMakeFiles/decNumber32d.dir/source/decimal64.c.o: CMakeFiles/decNumber32d.dir/flags.make
CMakeFiles/decNumber32d.dir/source/decimal64.c.o: /home/jake/sysgen/build/decNumber/source/decimal64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/decNumber32d.dir/source/decimal64.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decNumber32d.dir/source/decimal64.c.o   -c /home/jake/sysgen/build/decNumber/source/decimal64.c

CMakeFiles/decNumber32d.dir/source/decimal64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decNumber32d.dir/source/decimal64.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/decNumber/source/decimal64.c > CMakeFiles/decNumber32d.dir/source/decimal64.c.i

CMakeFiles/decNumber32d.dir/source/decimal64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decNumber32d.dir/source/decimal64.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/decNumber/source/decimal64.c -o CMakeFiles/decNumber32d.dir/source/decimal64.c.s

# Object files for target decNumber32d
decNumber32d_OBJECTS = \
"CMakeFiles/decNumber32d.dir/decnumber_version.c.o" \
"CMakeFiles/decNumber32d.dir/source/decContext.c.o" \
"CMakeFiles/decNumber32d.dir/source/decDouble.c.o" \
"CMakeFiles/decNumber32d.dir/source/decNumber.c.o" \
"CMakeFiles/decNumber32d.dir/source/decPacked.c.o" \
"CMakeFiles/decNumber32d.dir/source/decQuad.c.o" \
"CMakeFiles/decNumber32d.dir/source/decSingle.c.o" \
"CMakeFiles/decNumber32d.dir/source/decimal128.c.o" \
"CMakeFiles/decNumber32d.dir/source/decimal32.c.o" \
"CMakeFiles/decNumber32d.dir/source/decimal64.c.o"

# External object files for target decNumber32d
decNumber32d_EXTERNAL_OBJECTS =

libdecNumber32d.a: CMakeFiles/decNumber32d.dir/decnumber_version.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decContext.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decDouble.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decNumber.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decPacked.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decQuad.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decSingle.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decimal128.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decimal32.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/source/decimal64.c.o
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/build.make
libdecNumber32d.a: CMakeFiles/decNumber32d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libdecNumber32d.a"
	$(CMAKE_COMMAND) -P CMakeFiles/decNumber32d.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/decNumber32d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/decNumber32d.dir/build: libdecNumber32d.a

.PHONY : CMakeFiles/decNumber32d.dir/build

CMakeFiles/decNumber32d.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/decNumber32d.dir/cmake_clean.cmake
.PHONY : CMakeFiles/decNumber32d.dir/clean

CMakeFiles/decNumber32d.dir/depend:
	cd /home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jake/sysgen/build/decNumber /home/jake/sysgen/build/decNumber /home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug /home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug /home/jake/sysgen/build/WORK/decNumber/decNumber32.Debug/CMakeFiles/decNumber32d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/decNumber32d.dir/depend
