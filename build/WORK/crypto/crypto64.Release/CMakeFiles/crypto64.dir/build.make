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
CMAKE_SOURCE_DIR = /home/jake/sysgen/build/crypto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jake/sysgen/build/WORK/crypto/crypto64.Release

# Include any dependencies generated for this target.
include CMakeFiles/crypto64.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/crypto64.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/crypto64.dir/flags.make

CMakeFiles/crypto64.dir/crypto_version.c.o: CMakeFiles/crypto64.dir/flags.make
CMakeFiles/crypto64.dir/crypto_version.c.o: /home/jake/sysgen/build/crypto/crypto_version.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/crypto64.dir/crypto_version.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto64.dir/crypto_version.c.o   -c /home/jake/sysgen/build/crypto/crypto_version.c

CMakeFiles/crypto64.dir/crypto_version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto64.dir/crypto_version.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/crypto/crypto_version.c > CMakeFiles/crypto64.dir/crypto_version.c.i

CMakeFiles/crypto64.dir/crypto_version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto64.dir/crypto_version.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/crypto/crypto_version.c -o CMakeFiles/crypto64.dir/crypto_version.c.s

CMakeFiles/crypto64.dir/source/rijndael.c.o: CMakeFiles/crypto64.dir/flags.make
CMakeFiles/crypto64.dir/source/rijndael.c.o: /home/jake/sysgen/build/crypto/source/rijndael.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/crypto64.dir/source/rijndael.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto64.dir/source/rijndael.c.o   -c /home/jake/sysgen/build/crypto/source/rijndael.c

CMakeFiles/crypto64.dir/source/rijndael.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto64.dir/source/rijndael.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/crypto/source/rijndael.c > CMakeFiles/crypto64.dir/source/rijndael.c.i

CMakeFiles/crypto64.dir/source/rijndael.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto64.dir/source/rijndael.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/crypto/source/rijndael.c -o CMakeFiles/crypto64.dir/source/rijndael.c.s

CMakeFiles/crypto64.dir/source/sha1.c.o: CMakeFiles/crypto64.dir/flags.make
CMakeFiles/crypto64.dir/source/sha1.c.o: /home/jake/sysgen/build/crypto/source/sha1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/crypto64.dir/source/sha1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto64.dir/source/sha1.c.o   -c /home/jake/sysgen/build/crypto/source/sha1.c

CMakeFiles/crypto64.dir/source/sha1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto64.dir/source/sha1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/crypto/source/sha1.c > CMakeFiles/crypto64.dir/source/sha1.c.i

CMakeFiles/crypto64.dir/source/sha1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto64.dir/source/sha1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/crypto/source/sha1.c -o CMakeFiles/crypto64.dir/source/sha1.c.s

CMakeFiles/crypto64.dir/source/sha2.c.o: CMakeFiles/crypto64.dir/flags.make
CMakeFiles/crypto64.dir/source/sha2.c.o: /home/jake/sysgen/build/crypto/source/sha2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/crypto64.dir/source/sha2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto64.dir/source/sha2.c.o   -c /home/jake/sysgen/build/crypto/source/sha2.c

CMakeFiles/crypto64.dir/source/sha2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto64.dir/source/sha2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/crypto/source/sha2.c > CMakeFiles/crypto64.dir/source/sha2.c.i

CMakeFiles/crypto64.dir/source/sha2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto64.dir/source/sha2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/crypto/source/sha2.c -o CMakeFiles/crypto64.dir/source/sha2.c.s

CMakeFiles/crypto64.dir/source/sshdes.c.o: CMakeFiles/crypto64.dir/flags.make
CMakeFiles/crypto64.dir/source/sshdes.c.o: /home/jake/sysgen/build/crypto/source/sshdes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/crypto64.dir/source/sshdes.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto64.dir/source/sshdes.c.o   -c /home/jake/sysgen/build/crypto/source/sshdes.c

CMakeFiles/crypto64.dir/source/sshdes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto64.dir/source/sshdes.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jake/sysgen/build/crypto/source/sshdes.c > CMakeFiles/crypto64.dir/source/sshdes.c.i

CMakeFiles/crypto64.dir/source/sshdes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto64.dir/source/sshdes.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jake/sysgen/build/crypto/source/sshdes.c -o CMakeFiles/crypto64.dir/source/sshdes.c.s

# Object files for target crypto64
crypto64_OBJECTS = \
"CMakeFiles/crypto64.dir/crypto_version.c.o" \
"CMakeFiles/crypto64.dir/source/rijndael.c.o" \
"CMakeFiles/crypto64.dir/source/sha1.c.o" \
"CMakeFiles/crypto64.dir/source/sha2.c.o" \
"CMakeFiles/crypto64.dir/source/sshdes.c.o"

# External object files for target crypto64
crypto64_EXTERNAL_OBJECTS =

libcrypto64.a: CMakeFiles/crypto64.dir/crypto_version.c.o
libcrypto64.a: CMakeFiles/crypto64.dir/source/rijndael.c.o
libcrypto64.a: CMakeFiles/crypto64.dir/source/sha1.c.o
libcrypto64.a: CMakeFiles/crypto64.dir/source/sha2.c.o
libcrypto64.a: CMakeFiles/crypto64.dir/source/sshdes.c.o
libcrypto64.a: CMakeFiles/crypto64.dir/build.make
libcrypto64.a: CMakeFiles/crypto64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libcrypto64.a"
	$(CMAKE_COMMAND) -P CMakeFiles/crypto64.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crypto64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/crypto64.dir/build: libcrypto64.a

.PHONY : CMakeFiles/crypto64.dir/build

CMakeFiles/crypto64.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/crypto64.dir/cmake_clean.cmake
.PHONY : CMakeFiles/crypto64.dir/clean

CMakeFiles/crypto64.dir/depend:
	cd /home/jake/sysgen/build/WORK/crypto/crypto64.Release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jake/sysgen/build/crypto /home/jake/sysgen/build/crypto /home/jake/sysgen/build/WORK/crypto/crypto64.Release /home/jake/sysgen/build/WORK/crypto/crypto64.Release /home/jake/sysgen/build/WORK/crypto/crypto64.Release/CMakeFiles/crypto64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/crypto64.dir/depend
