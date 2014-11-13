set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( DisplayImage DisplayImage )
target_link_libraries( DisplayImage ${OpenCV_LIBS} )
