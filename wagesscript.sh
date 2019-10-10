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
echo "$val1 - $val2" | bc
