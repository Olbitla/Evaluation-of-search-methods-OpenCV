set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( starter_video starter_video )
target_link_libraries( starter_video ${OpenCV_LIBS} )
