#include <cv.h>
#include <highgui.h>

using namespace cv;
using namespace std;
 
Mat image, imageRoi, roi2, roiAux;

int main( int argc, char** argv )
{
 char* imageName = argv[1];
 image = imread( imageName, 1 );

 CvPoint pt1, pt2;
 
 int ancho = image.cols;
 int alto = image.rows;
 //int nc = image.cols * image.channels();
 pt1.x = (ancho/3);
 pt1.y = (alto/3);
 pt2.x = (ancho/2);
 pt2.y = (alto/2);
 int rangox = pt2.x - pt1.x;
 int rangoy = pt2.y - pt1.y;

 cout << "size: "<< image.size().height <<" , "
      << image.size().width << endl;

 namedWindow( imageName, 2);
 rectangle(image,pt1,pt2,CV_RGB(0,0,0),1,8,0);

 Rect r(pt1.x,pt1.y,rangox,rangoy);
 roiAux = image(r);

 cvtColor( roiAux, roi2, CV_RGB2GRAY );
 cvtColor( roi2, roiAux, CV_GRAY2BGR );

 cout << "size: "<< roi2.size().height <<" , "
      << roi2.size().width << endl;

 imshow( imageName, image);
 waitKey(0);
 return 0;
}
