for i in FAST GFTT HARRIS MSER ORB SIFT STAR SURF
do
  for j in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
  do
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-2992x2992/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Natural-Lighting/9MP-4000x2248/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Natural-Lighting/11MP-4000x2664/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Natural-Lighting/12MP-4000x3000/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-2992x2992/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Artificial-Lighting/9MP-4000x2248/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Artificial-Lighting/11MP-4000x2664/Diabion/Detectors/$i/dates$j.yml
    ./../../bin/Detectors ../../data/DIABION.JPG ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Diabion/IMG$j.JPG $i ../../../../../../local/Olbitla/Home/Artificial-Lighting/12MP-4000x3000/Diabion/Detectors/$i/dates$j.yml
  done
done
echo "Script was terminate"
