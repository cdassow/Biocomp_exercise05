# prints the gender, yearsExperience, and wages of the highest earner, the
# lowest earner, and the number of females in the top ten earners
# usage: bash EarnerStats.sh

echo "The top earner's gender, yearsExperience, and wage is:"
cat wages.csv | sort -n -r -t, -k4 | head -1 | cut -d , -f 1,2,4

echo "The lowest earner's gender, yearsExperience, and wage is:"
cat wages.csv | sort -n -t, -k4 | head -2 | tail -1| cut -d , -f 1,2,4

echo "The number of females in the top ten earners is:"
cat wages.csv | sort -n -r -t, -k4 | head -10 | grep female | wc -l
