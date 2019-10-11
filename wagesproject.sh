#write a file with each uniqe gender/yearsExperience combo in wages.csv
#usage: bash assignment1.sh

cat wages.csv | cut -d , -f 1,2 | grep [mf] | tr ',' ' ' | sort -k1,1 -k2n | uniq > unique_gender_years.txt

#write "highest earner:", followed by gender, yearsExperience, and wage of the highest earner
#write "lowest earner:", followed by gender, yearsExperience, and wage of the lowest earner
#write "number of females in the top ten earners in the data set:", followed by the number described
#usage: bash assignment2.sh

echo highest earner:

cat wages.csv | cut -d , -f 1,2,4 | grep [mf] | tr ',' ' ' | sort -k3n | tail -n 1 

echo lowest earner:

cat wages.csv | cut -d , -f 1,2,4 | grep [mf] | tr ',' ' ' | sort -k3n | head -n 1

echo number of females in the top ten earners in the data set:

cat wages.csv | cut -d , -f 1,4 | grep [mf] | tr ',' ' ' | sort -k3n | tail -n 10 | grep female | wc -l

#write difference between college graduate and high school graduate wages:
#list (college graduate wages - high school graduate wages)
#usage: bash assignment3.sh

echo difference between college graduate wages and high school graduate wages:

college=$(cat wages.csv | cut -d , -f 3,4 | egrep [1]{1}[6]{1}[,] | cut -d , -f 2 | sort -n | head -1)
highschool=$(cat wages.csv | cut -d , -f 3,4 | egrep [1]{1}[2]{1}[,] | cut -d , -f 2 | sort -n | head -1)

echo "$college-$highschool" | bc
