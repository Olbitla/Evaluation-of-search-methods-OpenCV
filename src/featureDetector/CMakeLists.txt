set(EXECUTABLE_OUTPUT_PATH ../../../bin)
add_executable( featureDetector featureDetector )
target_link_libraries( featureDetector ${OpenCV_LIBS} )
