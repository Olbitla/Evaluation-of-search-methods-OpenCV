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
include samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/depend.make

# Include the progress variables for this target.
include samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/progress.make

# Include the compile flags for this target's objects.
include samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/flags.make

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/flags.make
samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o: ../samples/ocl/surf_matcher.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o"
	cd /home/olbitla/opencv-2.4.8/build/samples/ocl && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o -c /home/olbitla/opencv-2.4.8/samples/ocl/surf_matcher.cpp

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.i"
	cd /home/olbitla/opencv-2.4.8/build/samples/ocl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olbitla/opencv-2.4.8/samples/ocl/surf_matcher.cpp > CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.i

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.s"
	cd /home/olbitla/opencv-2.4.8/build/samples/ocl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olbitla/opencv-2.4.8/samples/ocl/surf_matcher.cpp -o CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.s

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.requires:
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.requires

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.provides: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.requires
	$(MAKE) -f samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/build.make samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.provides.build
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.provides

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.provides.build: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o

# Object files for target example_ocl_surf_matcher
example_ocl_surf_matcher_OBJECTS = \
"CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o"

# External object files for target example_ocl_surf_matcher
example_ocl_surf_matcher_EXTERNAL_OBJECTS =

bin/ocl-example-surf_matcher: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libGLU.so
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libGL.so
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libSM.so
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libICE.so
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libX11.so
bin/ocl-example-surf_matcher: /usr/lib/i386-linux-gnu/libXext.so
bin/ocl-example-surf_matcher: lib/libopencv_core.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_flann.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_imgproc.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_highgui.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_ml.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_video.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_objdetect.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_features2d.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_calib3d.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_legacy.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_contrib.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_ocl.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_nonfree.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_ocl.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_gpu.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_objdetect.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_legacy.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_ml.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_video.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_calib3d.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_features2d.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_flann.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_highgui.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_photo.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_imgproc.so.2.4.8
bin/ocl-example-surf_matcher: lib/libopencv_core.so.2.4.8
bin/ocl-example-surf_matcher: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/build.make
bin/ocl-example-surf_matcher: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/ocl-example-surf_matcher"
	cd /home/olbitla/opencv-2.4.8/build/samples/ocl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_ocl_surf_matcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/build: bin/ocl-example-surf_matcher
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/build

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/requires: samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/surf_matcher.cpp.o.requires
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/requires

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/samples/ocl && $(CMAKE_COMMAND) -P CMakeFiles/example_ocl_surf_matcher.dir/cmake_clean.cmake
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/clean

samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/samples/ocl /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/samples/ocl /home/olbitla/opencv-2.4.8/build/samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/ocl/CMakeFiles/example_ocl_surf_matcher.dir/depend

