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
include samples/c/CMakeFiles/example_bgfg_codebook.dir/depend.make

# Include the progress variables for this target.
include samples/c/CMakeFiles/example_bgfg_codebook.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c/CMakeFiles/example_bgfg_codebook.dir/flags.make

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o: samples/c/CMakeFiles/example_bgfg_codebook.dir/flags.make
samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o: ../samples/c/bgfg_codebook.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o -c /home/olbitla/opencv-2.4.8/samples/c/bgfg_codebook.cpp

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.i"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olbitla/opencv-2.4.8/samples/c/bgfg_codebook.cpp > CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.i

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.s"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olbitla/opencv-2.4.8/samples/c/bgfg_codebook.cpp -o CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.s

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.requires:
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.requires

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.provides: samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.requires
	$(MAKE) -f samples/c/CMakeFiles/example_bgfg_codebook.dir/build.make samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.provides.build
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.provides

samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.provides.build: samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o

# Object files for target example_bgfg_codebook
example_bgfg_codebook_OBJECTS = \
"CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o"

# External object files for target example_bgfg_codebook
example_bgfg_codebook_EXTERNAL_OBJECTS =

bin/c-example-bgfg_codebook: samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libGLU.so
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libGL.so
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libSM.so
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libICE.so
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libX11.so
bin/c-example-bgfg_codebook: /usr/lib/i386-linux-gnu/libXext.so
bin/c-example-bgfg_codebook: lib/libopencv_core.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_flann.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_imgproc.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_highgui.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_ml.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_video.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_objdetect.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_photo.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_nonfree.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_features2d.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_calib3d.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_legacy.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_contrib.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_nonfree.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_gpu.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_photo.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_legacy.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_ocl.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_ml.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_video.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_objdetect.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_calib3d.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_features2d.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_flann.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_highgui.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_imgproc.so.2.4.8
bin/c-example-bgfg_codebook: lib/libopencv_core.so.2.4.8
bin/c-example-bgfg_codebook: samples/c/CMakeFiles/example_bgfg_codebook.dir/build.make
bin/c-example-bgfg_codebook: samples/c/CMakeFiles/example_bgfg_codebook.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/c-example-bgfg_codebook"
	cd /home/olbitla/opencv-2.4.8/build/samples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_bgfg_codebook.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c/CMakeFiles/example_bgfg_codebook.dir/build: bin/c-example-bgfg_codebook
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/build

samples/c/CMakeFiles/example_bgfg_codebook.dir/requires: samples/c/CMakeFiles/example_bgfg_codebook.dir/bgfg_codebook.cpp.o.requires
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/requires

samples/c/CMakeFiles/example_bgfg_codebook.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/samples/c && $(CMAKE_COMMAND) -P CMakeFiles/example_bgfg_codebook.dir/cmake_clean.cmake
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/clean

samples/c/CMakeFiles/example_bgfg_codebook.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/samples/c /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/samples/c /home/olbitla/opencv-2.4.8/build/samples/c/CMakeFiles/example_bgfg_codebook.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c/CMakeFiles/example_bgfg_codebook.dir/depend

