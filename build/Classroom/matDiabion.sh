for i in BRIEF FREAK ORB SIFT SURF
do
  for j in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
  do
    for k in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
    do 
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Diabion/bboxes/IMG$k.txt
       ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Diabion/bboxes/IMG$k.txt
      ./../../bin/Matching ../../data/DIABION.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Diabion/images/IMG$k.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Diabion/Descriptors/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Diabion/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Diabion/Matches/$i$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Diabion/bboxes/IMG$k.txt
    done
  done
done
echo "Script Finalizado"
