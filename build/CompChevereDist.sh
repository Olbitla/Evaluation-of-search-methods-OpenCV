#!/bin/bash

for i in BRIEF FREAK ORB SIFT SURF
do 
  echo "------------------------- Descriptor $i ------------------" 
  for j in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
  do
    echo "------ Detector $j ------" 
    for k in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
    do
      echo "------ Image $k ------"
      grep -e "Total_Matches" ./../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Chevere/Matches/$i$j/dates$k.yml 
      grep -e "Good_Matches" ./../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Chevere/Matches/$i$j/dates$k.yml
    done
  done
done
