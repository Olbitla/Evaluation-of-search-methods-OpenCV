#include <iostream>
#include <string>
#include <vector>
#include <iterator>
#include <opencv2/core/core.hpp>
#include <cv.h>
#include <highgui.h>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/legacy/legacy.hpp>
#define NN_RATIO_THRES 0.8

using namespace cv;
using namespace std;


int main( int argc, char** argv ) 
{
    String filename = (argv[5]);
    FileStorage stg(filename, FileStorage::WRITE);

    Mat imgA = imread(argv[1], -1);
    Mat imgB = imread(argv[2], -1);   
    
    if(!imgA.data || !imgB.data)
    {
      cout << "Error reading images" << endl;
      return -1;
    }
    
    Mat descriptorsA, descriptorsB;
    assert(stg.isOpened());
    vector<KeyPoint> keypointsA, keypointsB;
    vector< vector<DMatch> > matches, matchesAux;   
    vector<DMatch>filterMatches; 
    
    // DETECTION
    Ptr<FeatureDetector>detector = FeatureDetector::create(argv[3]);   
    double t = (double)getTickCount();
    double aux, suma, kpFoundA, kpFoundB, kpFoundM, kpFoundG;
    detector->detect( imgA, keypointsA );
    detector->detect( imgB, keypointsB );
    t = ((double)getTickCount() - t)/getTickFrequency();
    kpFoundA = keypointsA.size();
    //cout <<"Iniciando Escritura en Archivo..." << endl;
    //cout << "detection time [s]: " << t/1.0 << endl;
    aux = t;
    stg << "Detection_Time " << t;     
    
    // DESCRIPTOR
    if ( strcmp(argv[4],"FREAK") == 0 )
    {    
      FREAK extractor;
       
      t = (double)getTickCount();
      extractor.compute( imgA, keypointsA, descriptorsA );
      extractor.compute( imgB, keypointsB, descriptorsB );
      kpFoundB = keypointsB.size();
      t = ((double)getTickCount() - t)/getTickFrequency();            
    }
    else
    {
      Ptr<DescriptorExtractor>extractor = DescriptorExtractor::create(argv[4]);
      
      t = (double)getTickCount();
      extractor->compute( imgA, keypointsA, descriptorsA );
      extractor->compute( imgB, keypointsB, descriptorsB );
      kpFoundB = keypointsB.size();
      t = ((double)getTickCount() - t)/getTickFrequency();
    }
    //cout << "extraction time [s]: " << t << endl;
    stg << "Extraction_Time " << t;
    aux = aux + t; 
    
    // MATCHER
    Ptr<DescriptorMatcher>matcher = DescriptorMatcher::create("BruteForce-L1");
    //FlannBasedMatcher matcher;
       
    t = (double)getTickCount();
    matcher->knnMatch(descriptorsA, descriptorsB, matches, 2);
    
    t = ((double)getTickCount() - t)/getTickFrequency();
    //cout << "matching time [s]: " << t << endl;
    suma = aux + t;
    //cout << "Total Time [s]: " << suma << endl;
    kpFoundM = matches.size();
    
    
    ///////////////////////////// Umbral ///////////////////////////////////////    
    double min_dist = 0, max_dist = 100;
    //cout << "matches size: (" << matches.size() << "," << matches[0].size() << ")" << endl;
    int i = 0;  
    for( vector< vector<DMatch> >::iterator it = matches.begin(); it != matches.end(); it++ )
    {   
      //cout << "Match " << i << " NN RATIO = " << (*it).at(0).distance / (*it).at(1).distance << endl;  
      if( (double)((*it).at(0).distance / (*it).at(1).distance) < NN_RATIO_THRES ) 
      {
        matches.erase( it );
        it--;
      }
    }  

    //for( vector< vector<DMatch> >::const_iterator it = matches.begin(); it != matches.end(); it++ )
    //{
      //cout << "Match " << i << " NN = " << (*it).at(0).distance << " and " << (*it).at(1).distance << endl;
      //filterMatches[i];
      //i++;
    //} 
////////////////////////////////////////////////////////////////////////////////


    /////////////////////////// Draw matches////////////////////////////////////
    
    Mat imgMatch;
    drawMatches(imgA,keypointsA,imgB,keypointsB,matches,imgMatch,Scalar::all(-1),Scalar(0,0,255));
    
    vector<Point2f> obj;
    vector<Point2f> scene;
    
    //for (vector< vector<DMatch> >::iterator ti = matches.begin(); ti != matches.end(); ti++)
    //{
      for( int i = 0; i < matches.size(); i++ )
      {
        //-- Get the keypoints from the good matches
        obj.push_back( keypointsA[matches[i][0].queryIdx].pt );
        scene.push_back( keypointsB[matches[i][0].trainIdx].pt );
      }
      
      Mat H = findHomography( obj, scene, CV_LMEDS );
      
      //-- Get the corners from the image_1 ( the object to be "detected" )
      vector<Point2f> obj_corners(4);
      obj_corners[0] = cvPoint(0,0); obj_corners[1] = cvPoint( imgA.cols, 0 );
      obj_corners[2] = cvPoint( imgA.cols, imgA.rows ); obj_corners[3] = cvPoint( 0, imgA.rows );
      
      vector<Point2f> scene_corners(4);
      
      perspectiveTransform( obj_corners, scene_corners, H);
      
      //Errors//
      //line( matches(*ti), scene_corners[0] + Point2f( imgA.cols, 0), scene_corners[1] + Point2f( imgA.cols, 0), Scalar( 0, 255, 0), 4 );
      //line( matches(*ti), scene_corners[1] + Point2f( imgA.cols, 0), scene_corners[2] + Point2f( imgA.cols, 0), Scalar( 0, 255, 0), 4 );
      //line( matches(*ti), scene_corners[2] + Point2f( imgA.cols, 0), scene_corners[3] + Point2f( imgA.cols, 0), Scalar( 0, 255, 0), 4 );
      //line( matches(*ti), scene_corners[3] + Point2f( imgA.cols, 0), scene_corners[0] + Point2f( imgA.cols, 0), Scalar( 0, 255, 0), 4 );
      //Errors//
    //}
    
    namedWindow("matches", 2);
    kpFoundG = matches.size();
    //kpFoundG = good_matches.size();
    stg << "Matching Time " << t;
    stg << "Total-Time " << suma;
    stg << "Points_A_Found " << kpFoundA;
    stg << "Points_B_Found " << kpFoundB;
    stg << "Points_Matches_Found" << kpFoundM;
    stg << "Points_Matches_Good" << kpFoundG;
    //stg << "Points Matches Good" << kpFoundG;
    suma =  ((kpFoundM-kpFoundG)*100)/kpFoundM;
    stg << "Optimizacion " << suma;
    //cout << "Matches Found " << kpFoundM << endl;
    //cout << "Matches Good " << kpFoundG << endl;
    //cout << "Optimization " << suma << endl;
    stg.release();
    cout << "Write Done" << filename << endl;
    
    imwrite(argv[6],imgMatch);
    //imshow("matches", imgMatch);
    return 0;
    waitKey(0);
}
