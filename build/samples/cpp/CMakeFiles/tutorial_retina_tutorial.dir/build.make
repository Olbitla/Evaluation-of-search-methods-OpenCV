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
include samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/flags.make

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/flags.make
samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o: ../samples/cpp/tutorial_code/contrib/retina_tutorial.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o"
	cd /home/olbitla/opencv-2.4.8/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o -c /home/olbitla/opencv-2.4.8/samples/cpp/tutorial_code/contrib/retina_tutorial.cpp

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.i"
	cd /home/olbitla/opencv-2.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olbitla/opencv-2.4.8/samples/cpp/tutorial_code/contrib/retina_tutorial.cpp > CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.i

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.s"
	cd /home/olbitla/opencv-2.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olbitla/opencv-2.4.8/samples/cpp/tutorial_code/contrib/retina_tutorial.cpp -o CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.s

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.requires:
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.requires

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.provides: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/build.make samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.provides

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.provides.build: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o

# Object files for target tutorial_retina_tutorial
tutorial_retina_tutorial_OBJECTS = \
"CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o"

# External object files for target tutorial_retina_tutorial
tutorial_retina_tutorial_EXTERNAL_OBJECTS =

bin/cpp-tutorial-retina_tutorial: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libGLU.so
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libGL.so
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libSM.so
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libICE.so
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libX11.so
bin/cpp-tutorial-retina_tutorial: /usr/lib/i386-linux-gnu/libXext.so
bin/cpp-tutorial-retina_tutorial: lib/libopencv_core.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_flann.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_imgproc.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_highgui.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_ml.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_video.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_objdetect.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_photo.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_nonfree.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_features2d.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_calib3d.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_legacy.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_contrib.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_stitching.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_videostab.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_gpu.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_ocl.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_nonfree.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_ocl.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_gpu.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_objdetect.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_photo.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_legacy.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_ml.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_video.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_calib3d.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_features2d.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_flann.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_highgui.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_imgproc.so.2.4.8
bin/cpp-tutorial-retina_tutorial: lib/libopencv_core.so.2.4.8
bin/cpp-tutorial-retina_tutorial: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/build.make
bin/cpp-tutorial-retina_tutorial: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/cpp-tutorial-retina_tutorial"
	cd /home/olbitla/opencv-2.4.8/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_retina_tutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/build: bin/cpp-tutorial-retina_tutorial
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/build

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/requires: samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/tutorial_code/contrib/retina_tutorial.cpp.o.requires
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/requires

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_retina_tutorial.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/clean

samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/samples/cpp /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/samples/cpp /home/olbitla/opencv-2.4.8/build/samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/tutorial_retina_tutorial.dir/depend

