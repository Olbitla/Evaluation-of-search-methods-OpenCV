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
include samples/gpu/CMakeFiles/example_gpu_video_reader.dir/depend.make

# Include the progress variables for this target.
include samples/gpu/CMakeFiles/example_gpu_video_reader.dir/progress.make

# Include the compile flags for this target's objects.
include samples/gpu/CMakeFiles/example_gpu_video_reader.dir/flags.make

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/flags.make
samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o: ../samples/gpu/video_reader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o"
	cd /home/olbitla/opencv-2.4.8/build/samples/gpu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o -c /home/olbitla/opencv-2.4.8/samples/gpu/video_reader.cpp

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.i"
	cd /home/olbitla/opencv-2.4.8/build/samples/gpu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olbitla/opencv-2.4.8/samples/gpu/video_reader.cpp > CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.i

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.s"
	cd /home/olbitla/opencv-2.4.8/build/samples/gpu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olbitla/opencv-2.4.8/samples/gpu/video_reader.cpp -o CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.s

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.requires:
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.requires

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.provides: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.requires
	$(MAKE) -f samples/gpu/CMakeFiles/example_gpu_video_reader.dir/build.make samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.provides.build
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.provides

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.provides.build: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o

# Object files for target example_gpu_video_reader
example_gpu_video_reader_OBJECTS = \
"CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o"

# External object files for target example_gpu_video_reader
example_gpu_video_reader_EXTERNAL_OBJECTS =

bin/gpu-example-video_reader: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libGLU.so
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libGL.so
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libSM.so
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libICE.so
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libX11.so
bin/gpu-example-video_reader: /usr/lib/i386-linux-gnu/libXext.so
bin/gpu-example-video_reader: lib/libopencv_core.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_flann.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_imgproc.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_highgui.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_ml.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_video.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_objdetect.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_features2d.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_calib3d.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_legacy.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_contrib.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_gpu.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_superres.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_nonfree.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_ocl.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_gpu.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_legacy.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_ml.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_video.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_objdetect.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_calib3d.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_features2d.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_flann.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_highgui.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_photo.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_imgproc.so.2.4.8
bin/gpu-example-video_reader: lib/libopencv_core.so.2.4.8
bin/gpu-example-video_reader: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/build.make
bin/gpu-example-video_reader: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/gpu-example-video_reader"
	cd /home/olbitla/opencv-2.4.8/build/samples/gpu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_gpu_video_reader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/gpu/CMakeFiles/example_gpu_video_reader.dir/build: bin/gpu-example-video_reader
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/build

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/requires: samples/gpu/CMakeFiles/example_gpu_video_reader.dir/video_reader.cpp.o.requires
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/requires

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/samples/gpu && $(CMAKE_COMMAND) -P CMakeFiles/example_gpu_video_reader.dir/cmake_clean.cmake
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/clean

samples/gpu/CMakeFiles/example_gpu_video_reader.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/samples/gpu /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/samples/gpu /home/olbitla/opencv-2.4.8/build/samples/gpu/CMakeFiles/example_gpu_video_reader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/gpu/CMakeFiles/example_gpu_video_reader.dir/depend

