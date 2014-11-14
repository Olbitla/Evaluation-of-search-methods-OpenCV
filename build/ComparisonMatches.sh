echo "Start Script"
chmod +x CompChevereDist.sh
#chmod +x CompDiabionDist.sh
#chmod +x CompLata.sh
#chmod +x CompLataDist.sh
#chmod +x CompObjects.sh
#chmod +x CompPops.sh
#chmod +x CompVickDist.sh
#chmod +x CompYogurth.sh
echo "Execute: CompChevereDist.sh"
./CompChevereDist.sh -a -t net > ../data/ComparisonMatchesChevereDist.yml
#echo "Execute: CompDiabionDist.sh"
#./CompDiabionDist.sh -a -t net > ../data/ComparisonMatchesDiabionDist.yml
#echo "Execute: CompLata.sh"
#./CompLata.sh -a -t net > ../data/ComparisonMatchesLata.yml
#echo "Execute: CompLataDist.sh"
#./CompLataDist.sh -a -t net > ../data/ComparisonMatchesLataDist.yml
#echo "Execute: CompObjects.sh"
#./CompObjects.sh -a -t net > ../data/ComparisonMatchesObjects.yml
#echo "Execute: CompPops.sh"
#./CompPops.sh -a -t net > ../data/ComparisonMatchesPops.yml
#echo "Execute: CompVickDist.sh"
#./CompVickDist.sh -a -t net > ../data/ComparisonMatchesVickDist.yml
#echo "Execute: CompYogurth.sh"
#./CompYogurth.sh -a -t net > ../data/ComparisonMatchesYogurth.yml
echo "Process Was Successful"
