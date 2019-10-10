#QUESTION 1

cat wages.csv | cut -d , -f 1,2 | sort -n | tr ',' ' ' | uniq > wagesuniq.cvs 



#QUESTION 2
echo "Part  1"
cat wages.csv | sort –n –t’,’ –k4 –r | head –n 1
echo "Part 2"
cat wages.csv | sort –n –t’,’ –k4 | head -n 2 | tail -n 1
echo "Part 3"
cat wages.csv | grep female | sort –n –t’,’ –k4 –r | head –n 10



#QUESTION 3
#get the columns of yearsExperience and wage separated and the yearsExperience we want
val1=$(cat wages.csv | cut -d , -f 2,4 | grep "^12," | head -n 1)
val2=$(cat wages.csv | cut -d , -f 2,4 | grep "^16," | head -n 1)
echo "$val1 - $val2" | bc
