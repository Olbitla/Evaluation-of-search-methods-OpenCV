for i in BRIEF FREAK ORB SIFT SURF
do
  for j in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
  do
    for k in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
    do 
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Water/bboxes/IMG$k.txt
       ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Water/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/WATER.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Water/images/IMG$k.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Water/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Water/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Water/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Water/bboxes/IMG$k.txt
    done
  done
done
echo "Script Finalizado"