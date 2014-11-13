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
    String filenameRead = (argv[4]);   //filenameRead = "../data/Lata/Detectors/FAST/dates1.yml";
    String filenameWrite = (argv[5]);  //filenameWrite = "../data/Lata/Descriptors/BRIEFFAST/dates1.yml";
    
    FileStorage stgRead(filenameRead, FileStorage::READ);
    FileStorage stgWrite(filenameWrite, FileStorage::WRITE);
    
    assert(stgRead.isOpened());
    assert(stgWrite.isOpened());
    
    double aux, suma, kpFoundA, kpFoundB, kpFoundM, kpFoundG;
    double t = (double)getTickCount();
    //Mat imgA, imgB;
    Mat imgA = imread(argv[1], 0);
    Mat imgB = imread(argv[2], 0);
    //stgRead["imgB"] >> imgA;
    //stgRead["imgB"] >> imgB;   
    Mat descriptorsA, descriptorsB;
    vector<KeyPoint> keypointsA, keypointsB;
    
    t = ((double)getTickCount() - t)/getTickFrequency();
    aux = t;
    
    stgWrite << "Open Time Images " << t;
    
    FileNode kptFileNode = stgRead["KeyPointsA-Detection"];
    read(kptFileNode, keypointsA);
    FileNode kptFileNode2 = stgRead["KeyPointsB-Detection"];
    read(kptFileNode2, keypointsB);
    stgRead["KeyPointsA-Number"] >> kpFoundA;
    stgRead["KeyPointsB-Number"] >> kpFoundB;
    
    if ( strcmp(argv[3],"FREAK") == 0 )
    {    
      FREAK extractor;
       
      t = (double)getTickCount();
      extractor.compute( imgA, keypointsA, descriptorsA );
      extractor.compute( imgB, keypointsB, descriptorsB );
      kpFoundB = keypointsB.size();   
    }
    else
    {
      Ptr<DescriptorExtractor>extractor = DescriptorExtractor::create(argv[3]);
      
      t = (double)getTickCount();
      extractor->compute( imgA, keypointsA, descriptorsA );
      extractor->compute( imgB, keypointsB, descriptorsB );
      kpFoundB = keypointsB.size();
    }
    t = ((double)getTickCount() - t)/getTickFrequency();
    stgWrite << "Extraction_Time " << t;
    //write(stgWrite, "KeyPointsA-Detection", keypointsA);
    //write(stgWrite, "KeyPointsB-Detection", keypointsB); 
    write(stgWrite, "descriptorsA", descriptorsA);
    write(stgWrite, "descriptorsB", descriptorsB);    
    aux = aux + t;  
       
    stgRead.release();
    stgWrite.release();
    cout << "Read Done" << filenameRead << endl;
    cout << "Write Done " << filenameWrite << endl;
    return 0;
    //waitKey(0);
}
