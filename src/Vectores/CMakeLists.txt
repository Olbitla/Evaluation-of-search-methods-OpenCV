set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Vectores Vectores )
target_link_libraries( Vectores ${OpenCV_LIBS} )
