#!/bin/bash

for i in BRIEF FREAK ORB SIFT SURF
do 
  echo "------------------------- Descriptor $i ------------------" 
  for j in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
  do
    echo "------ Detector $j ------" 
    for k in 1 2 3 4 5 6 7
    do
      echo "------ Image $k ------"
      grep -e "Total_Matches" ../data/Lata/Matches/$i$j/dates$k.yml 
      grep -e "Good_Matches" ../data/Lata/Matches/$i$j/dates$k.yml
      #grep -e "Optimization" ../data/Lata/Matches/$i$j/dates$k.yml
    done
  done
done
