#include <iostream>
#include <string>
#include <vector>
#include <iterator>
#include <cv.h>
#include <highgui.h>
#include <stdio.h>
#include <stdlib.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/legacy/legacy.hpp>
#include <opencv2/core/core.hpp>
#define NN_RATIO_THRES 0.8

using namespace cv;
using namespace std;

vector < vector<DMatch> > matches;
vector <KeyPoint> keypointsA, keypointsB, bboxes;
Mat descriptorsA, descriptorsB;

int main( int argc, char** argv ) 
{
  FILE *ptr_file;
  String ImageA = (argv[1]), ImageB = (argv[2]);
  Mat imgA = imread(ImageA, -1);
  Mat imgB = imread(ImageB, -1);
  String filenameReadOne = (argv[3]);   //../data/Lata/Descriptors/$i$j/dates1.yml
  String filenameReadTwo = (argv[4]);   //../data/Lata/Detectors/$i/dates1.yml;
  const char* bboxes = (argv[5]);
  String filenameWrite = (argv[6]);
  String ImageName = (argv[7]);
  
  FileStorage stgReadOne(filenameReadOne, FileStorage::READ);
  FileStorage stgReadTwo(filenameReadTwo,FileStorage::READ);
  FileStorage stgWrite(filenameWrite, FileStorage::WRITE);
  assert(stgReadOne.isOpened());
  assert(stgReadTwo.isOpened());
  assert(stgWrite.isOpened());
  
  cout << "Reading Files..." << endl;
  stgReadOne["descriptorsA"] >> descriptorsA;
  stgReadOne["descriptorsB"] >> descriptorsB;
  
  FileNode kptFileNode = stgReadTwo["KeyPointsA-Detection"];
  read(kptFileNode, keypointsA);
  FileNode kptFileNode2 = stgReadTwo["KeyPointsB-Detection"];
  read(kptFileNode2, keypointsB);
  
  //////////////////////////////////////////////////////////////////////////////
  
  ptr_file = fopen(bboxes,"r");
  int cInt1, cInt2, cInt3, cInt4;
  cout << "El contenido del archivo de prueba es" << endl;
  for(int i=1; i<2; i++ )
  {
    fscanf( ptr_file, "%d\t%d\t%d\t%d\n", &cInt1, &cInt2, &cInt3, &cInt4 );
    printf( "%d\t%d\t%d\t%d\n", cInt1, cInt2, cInt3, cInt4 );
  }
  //cout << "cInt1: " << cInt1 << " cInt2: " << cInt2 << endl;
  //cout << "cInt3: " << cInt3 << " cInt4: " << cInt4 << endl;
  
  //////////////////////////////////////////////////////////////////////////////
  
  cout << "Dibujando rectangulo..." << endl;
  CvPoint pt1, pt2;
  pt1.x = cInt1;
  pt1.y = cInt2;
  pt2.x = cInt3;
  pt2.y = cInt4;

  cout << "pt1 (" << pt1.x << "," << pt1.y << ")" << endl;
  cout << "pt2 (" << pt2.x << "," << pt2.y << ")" << endl; 
  rectangle(imgB, pt1,pt2,CV_RGB(0,0,255),2,8,0);
  cout << "Matching..." << endl;
  
  //////////////////////////////// MATCHER /////////////////////////////////////  
  
  Ptr<DescriptorMatcher>matcher = DescriptorMatcher::create("BruteForce-L1");     
  double aux, kpFoundA, kpFoundB, kpFoundM, kpFoundG, optimization;   
  double t = (double)getTickCount();
  matcher->knnMatch(descriptorsA, descriptorsB, matches, 2);    
  t = ((double)getTickCount() - t)/getTickFrequency();
  kpFoundM = matches.size();
  cout << "Creando umbral..." << endl;   
  
  ///////////////////////////// Umbral /////////////////////////////////////////
      
  cout << "Initial Matches Size: (" << matches.size() << "," << matches[0].size() << ")" << endl;
  int i = 0, j = 0;  
  
  for( vector< vector<DMatch> >::iterator it = matches.begin(); it != matches.end(); it++ )
  {   
    //cout << "Match [" << i << "] NN RATIO = " << (*it).at(0).distance / (*it).at(1).distance << endl;  
    if( (double)((*it).at(0).distance / (*it).at(1).distance) < NN_RATIO_THRES ) 
    {
      matches.erase( it );
      it--;
    }
    i++;
  } 
  cout << "Ended Matches Size: (" << matches.size() << "," << matches[0].size() << ")" << endl;
  
  vector< DMatch > good_matches;
  good_matches.reserve(matches.size());  
  for (size_t i = 0; i < matches.size(); ++i)
  { 
    for (int j = 0; j < matches[i].size(); j++)
    {
      Point2f to = keypointsB[matches[i][j].trainIdx].pt;

      if ((to.y > pt1.y && to.y < pt2.y) && (to.x > pt1.x && to.x < pt2.x))
      {
        good_matches.push_back(matches[i][j]);
        j = matches[i].size();
      }
    }
  }
  
  cout << "Ended Matches Size: " << good_matches.size() << endl;
  ///////////////////////Convert DMatch en un vector////////////////////////////
  //In this part the vector of vector DMatch will be convert in vector DMatch
  //It need take the distances less larger and save in the vector DMatch
  //But i don't know how make these!
  ////////////////////////////Draw matches//////////////////////////////////////
  
  Mat imgMatch;    
  int fontFace = FONT_HERSHEY_SIMPLEX;
  double fontScale = 2;
  int thickness = 3; 
  int baseline=0;
  Size textSize = getTextSize(ImageB, fontFace, fontScale, thickness, &baseline);
  putText(imgB, ImageB, pt1, fontFace, fontScale, Scalar::all(255), thickness, 8);
  
  drawMatches(imgA,keypointsA,imgB,keypointsB,good_matches,imgMatch,Scalar::all(-1));
  drawKeypoints(imgB,keypointsB,imgB,Scalar::all(-1));
  
  kpFoundA = keypointsA.size();
  kpFoundB = keypointsB.size();
  kpFoundG = good_matches.size();
  stgWrite << "Matching Time " << t;
  stgWrite << "Points_A_Found " << kpFoundA;
  stgWrite << "Points_B_Found " << kpFoundB;
  stgWrite << "Total_Matches" << kpFoundM;
  stgWrite << "Good_Matches" << kpFoundG;
  optimization =  ((kpFoundM-kpFoundG)*100)/kpFoundM;
  stgWrite << "Optimization " << optimization;
  cout << "Optimization: " << optimization << " %" <<endl;
  int ancho = imgB.cols, anchoT = imgMatch.cols;
  int alto = imgB.rows, altoT = imgMatch.rows;
  cout << "Image B Width: " << ancho << " Image B Heigth: " << alto << endl;
  cout << "Container Width: " << anchoT << " Container Heigth: " << altoT << endl;
  
  cout << "Write Done" << filenameWrite << endl;
  imwrite("../data/imgB.jpg", imgB);
  cout << "Create Done imgB" << endl;
  imwrite(ImageName,imgMatch);
  cout << "Create Done" << ImageName << endl;
  
  stgReadTwo.release();
  stgWrite.release();
  stgReadOne.release();
  fclose(ptr_file);
  return 0;
  waitKey(0);   
}
