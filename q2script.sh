#script for the biocomp exercise.
#usage: bash script.sh 'prolly some variables'
# top earner
cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | head -n 2
#lowest earner
wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | tail -n 1

#top 10
cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | head -n 11 | tail -n 10 | cut -d " " -f 1


for in
do

done
