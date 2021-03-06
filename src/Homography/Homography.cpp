#include <stdio.h>
#include <iostream>
#include <vector>
#include <opencv2/core/core.hpp>
#include <highgui.h>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/legacy/legacy.hpp>
#include <opencv2/calib3d/calib3d.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
  if(argc != 3)
  {
    return -1;
  }
  
  Mat img_object = imread(argv[1],1);
  Mat img_scene = imread(argv[2],1);
  //String ImageName = (argv[3]);
  
  if(!img_object.data || !img_scene.data)
  {
    cout << "--(!)Error leyendo imagenes " << endl;
    return -1;
  }
  
  int minHessian = 400;
  SurfFeatureDetector detector(minHessian);
  
  vector<KeyPoint>keypoints_object, keypoints_scene;
  detector.detect( img_object, keypoints_object );
  detector.detect( img_scene, keypoints_scene );
  
  //-- Step 2: Calculate descriptors (feature vectors)
  
  Mat descriptors_object, descriptors_scene;
  
  SurfDescriptorExtractor extractor;
  extractor.compute( img_object, keypoints_object, descriptors_object );
  extractor.compute( img_scene, keypoints_scene, descriptors_scene );
  
  //-- Step 3: Matching descriptor vectors using FLANN matcher
  FlannBasedMatcher matcher;
  
  vector< DMatch > matches;
  matcher.match( descriptors_object, descriptors_scene, matches );
  
  //////////////////////////////////////////////////////////////////////////////
  
  double max_dist = 0; double min_dist = 100;

  //-- Quick calculation of max and min distances between keypoints
  for( int i = 0; i < descriptors_object.rows; i++ )
  { 
    double dist = matches[i].distance;
    if( dist < min_dist ) min_dist = dist;
    if( dist > max_dist ) max_dist = dist;
  }
  
  printf("-- Max dist : %f \n", max_dist );
  printf("-- Min dist : %f \n", min_dist );
  
  cout << "Initializing Good Matches" << endl;
  //-- Draw only "good" matches (i.e. whose distance is less than 3*min_dist )
  vector< DMatch > good_matches;
  
  for( int i = 0; i < descriptors_object.rows; i++ )
  { 
    if( matches[i].distance < 3*min_dist )
     { 
       good_matches.push_back( matches[i]); 
     }
  }
  
  Mat img_matches;
  namedWindow("Good Matches & Object detection", 0);
  drawMatches( img_object, keypoints_object, img_scene, keypoints_scene,
               good_matches, img_matches, Scalar::all(-1), Scalar(0,0,255),
               vector<char>() );
               
  //////////////////////////////////////////////////////////////////////////////
  cout << "Finding Object " << endl;
  //-- Localize the object
  vector<Point2f> obj;
  vector<Point2f> scene;
  
  for( int i = 0; i < good_matches.size(); i++ )
  {
    //-- Get the keypoints from the good matches
    obj.push_back( keypoints_object[ good_matches[i].queryIdx ].pt );
    scene.push_back( keypoints_scene[ good_matches[i].trainIdx ].pt );
  }
  
  Mat H = findHomography( obj, scene, CV_LMEDS );
  
  //-- Get the corners from the image_1 ( the object to be "detected" )
  vector<Point2f> obj_corners(4);
  obj_corners[0] = cvPoint(0,0); 
  obj_corners[1] = cvPoint( img_object.cols, 0);
  obj_corners[2] = cvPoint( img_object.cols, img_object.rows); 
  obj_corners[3] = cvPoint( 0, img_object.rows);
  vector<Point2f> scene_corners(4);
  
  perspectiveTransform( obj_corners, scene_corners, H);
  
  //-- Draw lines between the corners (the mapped object in the scene - image_2 )
  line( img_matches, scene_corners[0] + Point2f( img_object.cols, 0), 
                     scene_corners[1] + Point2f( img_object.cols, 0), Scalar(0, 255, 0), 4 );
  line( img_matches, scene_corners[1] + Point2f( img_object.cols, 0), 
                     scene_corners[2] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );
  line( img_matches, scene_corners[2] + Point2f( img_object.cols, 0), 
                     scene_corners[3] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );
  line( img_matches, scene_corners[3] + Point2f( img_object.cols, 0), 
                     scene_corners[0] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );
  
  //-- Show detected matches
  imwrite("../data/Example.jpg",img_matches );
  imshow( "Good Matches & Object detection", img_matches );
  cout << "Write image " << endl;
  
  waitKey(0);
  return 0;
}
