set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Descriptors Descriptors )
target_link_libraries( Descriptors ${OpenCV_LIBS} )
