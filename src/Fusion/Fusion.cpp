#include <cv.h>
#include <highgui.h>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
  Mat imagen1, imagen2, container, roiAux1, roiAux2;
  int h1, h2, ht, w1, wt;
  CvPoint pt1,pt2, pim1, pim2, ran1, ran2;

  char* imagenName1 = argv[1];
  char* imagenName2 = argv[2];
  //imagen1 = imread("./../data/5chloe.jpg");
  //imagen2 = imread("./../data/7chloe.jpg");
  imagen1 = imread(imagenName1,1);
  imagen2 = imread(imagenName2,1);  

  cout << "Fusion..." << endl;
  namedWindow("Imagen T", CV_WINDOW_AUTOSIZE);
  cout <<"Calculando Dimensiones..."<< endl;
  cout << "size 1-> W1: "<< imagen1.size().width <<" , H1: " << imagen1.size().height << endl;
  cout << "size 2-> W2: "<< imagen2.size().width <<" , H2: " << imagen2.size().height << endl;
  
  w1 = imagen1.size().width;
  pt1.x=0;
  pt1.y=0;
  pt2.x=w1;
  pt2.y=imagen1.size().height;
  
  if(imagen1.size().height > imagen2.size().height){
    ht = imagen1.size().height;
    
  }else{
    ht = imagen2.size().height;
  }

  h1 = imagen1.size().height;
  wt = imagen1.size().width + imagen2.size().width;

  cout << "size T-> WT: "<< wt <<" , HT: " << ht << endl;
  container = cvCreateImage(cvSize(wt,ht),IPL_DEPTH_8U,3);
  cout << "Imagen Contenedora creada" << endl;
  Rect r1(0,0,imagen1.size().width,imagen1.size().height);
  roiAux1 = container(r1);
  imagen1.copyTo(roiAux1);
  cout << "Imagen1 Cargada a Contenedor" << endl;

  h2 = imagen2.size().height;
  pim1.x=imagen1.size().width;
  pim1.y=0;
  pim2.x=imagen2.size().width;
  pim2.y=h2;
  
  Rect r2(pim1.x,pim1.y,pim2.x,pim2.y);
  roiAux2 = container(r2);
  imagen2.copyTo(roiAux2);
  cout << "Imagen2 Cargada a Contenedor" << endl; 
  cout << "Ingresa Valores Para Dibujar Linea:" << endl;

  cout <<" Range X1[0-"<< w1 <<"] Y1[0-" << h1 <<"]"<< endl;
  cout << "X1: ";
  cin >> ran1.x;
  cout << "Y1: ";
  cin >> ran1.y;
  cout <<" Range X2["<< w1 <<"-"<< wt <<"] Y2[0-" << h2 <<"]"<< endl;
  cout <<"X2: ";
  cin >>ran2.x;
  cout << "Y2: ";
  cin >> ran2.y;

  if(ran1.x < w1 && ran1.y < ht){
    if((ran2.x > w1 && ran2.x < wt) && ran2.y < h2){
      line(container,ran1,ran2,CV_RGB(0,255,0),2,8,0);
      imshow("Imagen T", container);
      //imwrite("../data/contenedor.jpg",container);
    }else{
      cout << "Linea fuera de Rango X2-Y2" << endl;
      cout << "Error de Imagen" << endl;
    }
  }else{
    cout << "Linea fuera de Rango X1-Y1" << endl;
    cout << "Error de Imagen" << endl;
  }
  
  waitKey();
}
