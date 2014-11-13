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

using namespace cv;
using namespace std;

int main( int argc, char** argv ) 
{
    String filename = (argv[4]);
    String det = (argv[3]);
    FileStorage stg(filename, FileStorage::WRITE);
    double aux;
    double t = (double)getTickCount();
    Mat imgA = imread(argv[1], 0);
    Mat imgB = imread(argv[2], 0);   

    t = ((double)getTickCount() - t)/getTickFrequency();
    aux = t;
    stg << "Open Time Images " << t;

    assert(stg.isOpened());
    vector<KeyPoint> keypointsA, keypointsB;
    
    ///////////////////////////////DETECTOR/////////////////////////////////////
    
    t = (double)getTickCount();
    Ptr<FeatureDetector>detector = FeatureDetector::create(det);   
    double suma, kpFoundA, kpFoundB, kpFoundM, kpFoundG;
    detector->detect( imgA, keypointsA );
    detector->detect( imgB, keypointsB );
    t = ((double)getTickCount() - t)/getTickFrequency();
    kpFoundA = keypointsA.size();
    kpFoundB = keypointsB.size();

    stg << "Detector " << det;
    stg << "Time-Detection " << t;
    stg << "KeyPointsA-Number " << kpFoundA;
    stg << "KeyPointsB-Number " << kpFoundB;

    //write(stg, "imgA", imgA);
    //write(stg, "imgB", imgB);
    write(stg, "KeyPointsA-Detection", keypointsA);
    write(stg, "KeyPointsB-Detection", keypointsB);

    
    stg.release();
    cout << "Write Done" << filename << endl;
    //drawKeypoints(imgB,keypointsB,imgB);
    //imshow("matches", imgB);
    return 0;
    //waitKey(0);
}
