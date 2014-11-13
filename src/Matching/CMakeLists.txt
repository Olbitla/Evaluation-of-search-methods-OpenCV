set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Matching Matching )
target_link_libraries( Matching ${OpenCV_LIBS} )
