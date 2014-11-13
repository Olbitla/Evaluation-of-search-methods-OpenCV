set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( matrix matrix )
target_link_libraries( matrix ${OpenCV_LIBS} )
