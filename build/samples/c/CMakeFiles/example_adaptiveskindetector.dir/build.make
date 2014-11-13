# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/olbitla/opencv-2.4.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/olbitla/opencv-2.4.8/build

# Include any dependencies generated for this target.
include samples/c/CMakeFiles/example_adaptiveskindetector.dir/depend.make

# Include the progress variables for this target.
include samples/c/CMakeFiles/example_adaptiveskindetector.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c/CMakeFiles/example_adaptiveskindetector.dir/flags.make

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o: samples/c/CMakeFiles/example_adaptiveskindetector.dir/flags.make
samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o: ../samples/c/adaptiveskindetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o -c /home/olbitla/opencv-2.4.8/samples/c/adaptiveskindetector.cpp

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.i"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olbitla/opencv-2.4.8/samples/c/adaptiveskindetector.cpp > CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.i

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.s"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olbitla/opencv-2.4.8/samples/c/adaptiveskindetector.cpp -o CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.s

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.requires:
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.requires

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.provides: samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.requires
	$(MAKE) -f samples/c/CMakeFiles/example_adaptiveskindetector.dir/build.make samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.provides.build
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.provides

samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.provides.build: samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o

# Object files for target example_adaptiveskindetector
example_adaptiveskindetector_OBJECTS = \
"CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o"

# External object files for target example_adaptiveskindetector
example_adaptiveskindetector_EXTERNAL_OBJECTS =

bin/c-example-adaptiveskindetector: samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libGLU.so
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libGL.so
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libSM.so
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libICE.so
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libX11.so
bin/c-example-adaptiveskindetector: /usr/lib/i386-linux-gnu/libXext.so
bin/c-example-adaptiveskindetector: lib/libopencv_core.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_flann.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_imgproc.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_highgui.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_ml.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_video.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_objdetect.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_photo.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_nonfree.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_features2d.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_calib3d.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_legacy.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_contrib.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_nonfree.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_gpu.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_photo.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_legacy.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_ocl.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_ml.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_video.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_objdetect.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_calib3d.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_features2d.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_flann.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_highgui.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_imgproc.so.2.4.8
bin/c-example-adaptiveskindetector: lib/libopencv_core.so.2.4.8
bin/c-example-adaptiveskindetector: samples/c/CMakeFiles/example_adaptiveskindetector.dir/build.make
bin/c-example-adaptiveskindetector: samples/c/CMakeFiles/example_adaptiveskindetector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/c-example-adaptiveskindetector"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_adaptiveskindetector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c/CMakeFiles/example_adaptiveskindetector.dir/build: bin/c-example-adaptiveskindetector
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/build

samples/c/CMakeFiles/example_adaptiveskindetector.dir/requires: samples/c/CMakeFiles/example_adaptiveskindetector.dir/adaptiveskindetector.cpp.o.requires
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/requires

samples/c/CMakeFiles/example_adaptiveskindetector.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/samples/c && $(CMAKE_COMMAND) -P CMakeFiles/example_adaptiveskindetector.dir/cmake_clean.cmake
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/clean

samples/c/CMakeFiles/example_adaptiveskindetector.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/samples/c /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/samples/c /home/olbitla/opencv-2.4.8/build/samples/c/CMakeFiles/example_adaptiveskindetector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c/CMakeFiles/example_adaptiveskindetector.dir/depend
