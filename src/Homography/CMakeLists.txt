set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Homography Homography )
target_link_libraries( Homography ${OpenCV_LIBS} )
