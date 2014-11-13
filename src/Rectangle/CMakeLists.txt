set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Rectangle Rectangle )
target_link_libraries( Rectangle ${OpenCV_LIBS} )
