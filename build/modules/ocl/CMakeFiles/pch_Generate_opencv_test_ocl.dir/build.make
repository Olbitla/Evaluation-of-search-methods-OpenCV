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

# Utility rule file for pch_Generate_opencv_test_ocl.

# Include the progress variables for this target.
include modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/progress.make

modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl: modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch

modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch: ../modules/ocl/test/test_precomp.hpp
modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch: modules/ocl/test_precomp.hpp
modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch: lib/libopencv_test_ocl_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp.gch/opencv_test_ocl_Release.gch"
	cd /home/olbitla/opencv-2.4.8/build/modules/ocl && /usr/bin/cmake -E make_directory /home/olbitla/opencv-2.4.8/build/modules/ocl/test_precomp.hpp.gch
	cd /home/olbitla/opencv-2.4.8/build/modules/ocl && /usr/bin/c++ -O2 -DNDEBUG -DNDEBUG -I"/home/olbitla/opencv-2.4.8/modules/ocl/test" -I"/home/olbitla/opencv-2.4.8/modules/features2d/include" -I"/home/olbitla/opencv-2.4.8/modules/highgui/include" -I"/home/olbitla/opencv-2.4.8/modules/imgproc/include" -I"/home/olbitla/opencv-2.4.8/modules/flann/include" -I"/home/olbitla/opencv-2.4.8/modules/core/include" -I"/home/olbitla/opencv-2.4.8/modules/ts/include" -I"/home/olbitla/opencv-2.4.8/modules/ocl/include" -I"/home/olbitla/opencv-2.4.8/modules/video/include" -I"/home/olbitla/opencv-2.4.8/modules/objdetect/include" -I"/home/olbitla/opencv-2.4.8/modules/ml/include" -I"/home/olbitla/opencv-2.4.8/modules/calib3d/include" -isystem"/home/olbitla/opencv-2.4.8/build/modules/ocl" -I"/home/olbitla/opencv-2.4.8/modules/ocl/src" -isystem"/home/olbitla/opencv-2.4.8/3rdparty/include/opencl/1.2" -isystem"/home/olbitla/opencv-2.4.8/build" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-unnamed-type-template-args -fdiagnostics-show-option -pthread -march=i686 -fomit-frame-pointer -msse -msse2 -msse3 -mfpmath=sse -ffunction-sections -x c++-header -o /home/olbitla/opencv-2.4.8/build/modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch /home/olbitla/opencv-2.4.8/build/modules/ocl/test_precomp.hpp

modules/ocl/test_precomp.hpp: ../modules/ocl/test/test_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olbitla/opencv-2.4.8/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp"
	cd /home/olbitla/opencv-2.4.8/build/modules/ocl && /usr/bin/cmake -E copy /home/olbitla/opencv-2.4.8/modules/ocl/test/test_precomp.hpp /home/olbitla/opencv-2.4.8/build/modules/ocl/test_precomp.hpp

pch_Generate_opencv_test_ocl: modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl
pch_Generate_opencv_test_ocl: modules/ocl/test_precomp.hpp.gch/opencv_test_ocl_Release.gch
pch_Generate_opencv_test_ocl: modules/ocl/test_precomp.hpp
pch_Generate_opencv_test_ocl: modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/build.make
.PHONY : pch_Generate_opencv_test_ocl

# Rule to build all files generated by this target.
modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/build: pch_Generate_opencv_test_ocl
.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/build

modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/clean:
	cd /home/olbitla/opencv-2.4.8/build/modules/ocl && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_ocl.dir/cmake_clean.cmake
.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/clean

modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/depend:
	cd /home/olbitla/opencv-2.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olbitla/opencv-2.4.8 /home/olbitla/opencv-2.4.8/modules/ocl /home/olbitla/opencv-2.4.8/build /home/olbitla/opencv-2.4.8/build/modules/ocl /home/olbitla/opencv-2.4.8/build/modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_test_ocl.dir/depend

