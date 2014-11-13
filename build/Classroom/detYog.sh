for i in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
do
  for j in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
  do
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-2992x2992/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/9MP-4000x2248/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/11MP-4000x2664/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Natural-Lighting/12MP-4000x3000/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-2992x2992/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/9MP-4000x2248/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/11MP-4000x2664/Yogurth/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/YOGURTH.JPG ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Yogurth/IMG$j.JPG $i ../../../../../../local/Olbitla/Classroom/Artificial-Lighting/12MP-4000x3000/Yogurth/Detectors/$i/dates$j.yml
  done
done
echo "Script was terminate"
