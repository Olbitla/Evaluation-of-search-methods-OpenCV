for i in BRIEF FREAK ORB SIFT SURF
do
  for j in FAST GFTT HARRIS MSER ORB STAR SURF
  do
    for k in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
    do 
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Pops/Descriptors/$i$j/dates$k.yml
      ./../../bin/Descriptors ../../data/POPS.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Pops/IMG$k.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Pops/Detectors/$j/dates$k.yml ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Pops/Descriptors/$i$j/dates$k.yml
    done
  done
done
echo "Script Correcto"
