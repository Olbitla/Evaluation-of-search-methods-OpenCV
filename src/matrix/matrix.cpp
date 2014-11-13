#include <cv.h>
#include <highgui.h>

using namespace cv;
using namespace std;

int main ()
{
  Mat A(4,3,CV_8UC1);
  Mat B(4,3,CV_8UC1);

  randu(A,Scalar::all(0),Scalar::all(255));
  randu(B,Scalar::all(0),Scalar::all(255));

  Mat C = A;

  C.at<unsigned char>(0,0) = 0;

  cout << "\nA = " << endl << " " << A << endl << endl;		
  cout << "B = " << endl << " " << B << endl << endl;
  cout << "C = " << endl << " " << C << endl << endl;
 
  return 0;
}
