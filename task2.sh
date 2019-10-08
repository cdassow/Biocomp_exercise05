#Return gender, yearsExperience, and wage for highest earner, then for lowest earner, then number of females in top ten earners
#Usage: bash task2.sh

echo "Gender, yearsExperience, and wage for highest earner:"
cat wages.csv | sort -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4

echo "Gender, yearsExperience, and wage for lowest earner:"
cat wages.csv | sort -k 4 -n | head -n 1 | cut -d , -f 1,2,4

echo "Number of females in top 10 earners:"
cat wages.csv | sort -k 4 -n -r | head -n 10 | cut -d , -f 1,2,4 | grep "female" -c


