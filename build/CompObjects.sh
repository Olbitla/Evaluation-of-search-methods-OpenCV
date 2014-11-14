#!/bin/bash

for i in BRIEF FREAK ORB SIFT SURF
do 
  echo "------------------------- Descriptor $i ------------------" 
  for j in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
  do
    echo "------ Detector $j ------" 
    for k in 1 2 3 4 5
    do
      echo "------ Image $k ------"
      grep -e "Total_Matches" ../../../../../media/Hijitoo/Olbitla/Objects/Matches/$i$j/dates$k.yml 
      grep -e "Good_Matches" ../../../../../media/Hijitoo/Olbitla/Objects/Matches/$i$j/dates$k.yml
    done
  done
done
