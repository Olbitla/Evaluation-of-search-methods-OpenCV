#include <cv.h>
#include <highgui.h>

using namespace cv;

int main( int argc, char** argv )
{
 char* imageName = argv[1];

 Mat image;
 image = imread( imageName, 1 );

 //if( argc != 3 )
 //{
   //printf( " ./LoadImages input_path output_path \n " );
   //return -1;
 //}

 Mat gray_image;
 CvPoint pt1, pt2;
 //int width, height;
 int ancho = image->width;
 int alto = image->height;
 pt1.x = 100;
 pt1.y = 80;
 pt2.x = 220;
 pt2.y = 200;

 width = pt2.x - pt1.x;
 height = pt2.y - pt1.y;
 
 namedWindow( imageName, CV_WINDOW_AUTOSIZE );
 imshow( imageName, image );
 rectangle(image,pt1,pt2,CV_RGB(0,255,0),2,8,0);
 cvtColor( image, gray_image, CV_RGB2GRAY );

 namedWindow( "ROI Gray", CV_WINDOW_AUTOSIZE );

 imshow( "ROI Gray", gray_image );
 //CvSetImageROI(image,cvRect(pt1.x,pt2.y,width,height));
 waitKey(0);

 return 0;
}

