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
  vector <int> vect;
  vector <int>::iterator it1, itf, ite;
  
  for(int i=0;i<50;i++)
  {
    vect.push_back(i);
  }
  
  itf = vect.begin();
  ite = vect.end()-1;
  cout << "First: " << *itf << " End: " << *ite << endl;
  
  for(it1 = vect.begin();it1 != vect.end();it1++)
  {
    cout << *it1 << endl;
  }
  
  return 0;
}
