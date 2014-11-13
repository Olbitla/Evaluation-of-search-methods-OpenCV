set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( Detectors Detectors )
target_link_libraries( Detectors ${OpenCV_LIBS} )
