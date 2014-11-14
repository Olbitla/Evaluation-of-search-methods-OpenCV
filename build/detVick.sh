for i in SIFT STAR SURF
do
  for j in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
  do 
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Natural-Light/9MP-2992x2992/Vick/images/IMG$j.JPG $i ../data/Home/Natural-Light/9MP-2992x2992/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Natural-Light/9MP-4000x2248/Vick/images/IMG$j.JPG $i ../data/Home/Natural-Light/9MP-4000x2248/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Natural-Light/11MP-4000x2664/Vick/images/IMG$j.JPG $i ../data/Home/Natural-Light/11MP-4000x2664/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Natural-Light/12MP-4000x3000/Vick/images/IMG$j.JPG $i ../data/Home/Natural-Light/12MP-4000x3000/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Artificial-Light/9MP-2992x2992/Vick/images/IMG$j.JPG $i ../data/Home/Artificial-Light/9MP-2992x2992/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Artificial-Light/9MP-4000x2248/Vick/images/IMG$j.JPG $i ../data/Home/Artificial-Light/9MP-4000x2248/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Artificial-Light/11MP-4000x2664/Vick/images/IMG$j.JPG $i ../data/Home/Artificial-Light/11MP-4000x2664/Vick/detectors/$i/dates$j.yml
    ./../bin/Detectors ../data/VICK.JPG ../data/Home/Artificial-Light/12MP-4000x3000/Vick/images/IMG$j.JPG $i ../data/Home/Artificial-Light/12MP-4000x3000/Vick/detectors/$i/dates$j.yml
  done
done
