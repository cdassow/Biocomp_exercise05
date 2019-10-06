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
