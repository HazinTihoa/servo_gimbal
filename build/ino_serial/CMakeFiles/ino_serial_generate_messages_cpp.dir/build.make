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
CMAKE_SOURCE_DIR = /home/tzh/arduino_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tzh/arduino_ws/build

# Utility rule file for ino_serial_generate_messages_cpp.

# Include the progress variables for this target.
include ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/progress.make

ino_serial/CMakeFiles/ino_serial_generate_messages_cpp: /home/tzh/arduino_ws/devel/include/ino_serial/msg.h


/home/tzh/arduino_ws/devel/include/ino_serial/msg.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/tzh/arduino_ws/devel/include/ino_serial/msg.h: /home/tzh/arduino_ws/src/ino_serial/msg/msg.msg
/home/tzh/arduino_ws/devel/include/ino_serial/msg.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tzh/arduino_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from ino_serial/msg.msg"
	cd /home/tzh/arduino_ws/src/ino_serial && /home/tzh/arduino_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/tzh/arduino_ws/src/ino_serial/msg/msg.msg -Iino_serial:/home/tzh/arduino_ws/src/ino_serial/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p ino_serial -o /home/tzh/arduino_ws/devel/include/ino_serial -e /opt/ros/noetic/share/gencpp/cmake/..

ino_serial_generate_messages_cpp: ino_serial/CMakeFiles/ino_serial_generate_messages_cpp
ino_serial_generate_messages_cpp: /home/tzh/arduino_ws/devel/include/ino_serial/msg.h
ino_serial_generate_messages_cpp: ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/build.make

.PHONY : ino_serial_generate_messages_cpp

# Rule to build all files generated by this target.
ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/build: ino_serial_generate_messages_cpp

.PHONY : ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/build

ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/clean:
	cd /home/tzh/arduino_ws/build/ino_serial && $(CMAKE_COMMAND) -P CMakeFiles/ino_serial_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/clean

ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/depend:
	cd /home/tzh/arduino_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tzh/arduino_ws/src /home/tzh/arduino_ws/src/ino_serial /home/tzh/arduino_ws/build /home/tzh/arduino_ws/build/ino_serial /home/tzh/arduino_ws/build/ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ino_serial/CMakeFiles/ino_serial_generate_messages_cpp.dir/depend
