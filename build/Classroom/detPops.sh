clear
make
for i in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
do
  for j in 1 2 3 4 5 
  do 
    ./../bin/Detectors ../data/POPS.JPG ../data/Pops/IMG$j.JPG $i ../data/Pops/Detectors/$i/dates$j.yml
    #echo "testing $i bucle $j"
  done
done
echo "Script Correcto"
