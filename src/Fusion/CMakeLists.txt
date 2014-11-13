set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Fusion Fusion )
target_link_libraries( Fusion ${OpenCV_LIBS} )
