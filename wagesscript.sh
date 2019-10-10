#i dont know how to put it in a shell script but here this might be good for the first part ?
# also dont know if we can put multiple for loops within one shell script
for lines in wages.csv
do
cat $lines | cut -d , -f 1,2 | sort -n | tr ',' ' ' | uniq > wagesuniq.csv
done

for i in wages.csv
do
cat $i | sort -n -r | head -n 1 

#here is the script for the first part of question 2
cat wages.csv | sort –n –t’,’ –k4 –r | head –n 1
#here is the script for the second part of question 2 but have to figure out 
#how to take off the column headers maybe just grep whatever the gender is of this person

cat wages.csv | sort –n –t’,’ –k4 | head –n 2

#here is the third part of question 2
cat wages.csv | grep female | sort –n –t’,’ –k4 –r | head –n 10
