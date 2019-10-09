# Makes a file called GenderyearsExperience.csv that containes the gender and yearsExperience of each earner

# Also prints the gender, yearsExperience, and wages of the highest earner, the lowest earner, and the number of females in the top ten earners

# Also also looks at effect of graduating college on minimum wage for earners
# usage: bash EarnerStats.sh

# Part 1
cat wages.csv | cut -d , -f 1,2 | tr ',' ' ' |grep -v gender | sort -k1,1 -k2,2n >> GenderyearsExperience.csv

# Part 2
echo "The top earner's gender, yearsExperience, and wage is:"
cat wages.csv | sort -n -r -t, -k4 | head -1 | cut -d , -f 1,2,4

echo "The lowest earner's gender, yearsExperience, and wage is:"
cat wages.csv | sort -n -t, -k4 | head -2 | tail -1| cut -d , -f 1,2,4

echo "The number of females in the top ten earners is:"
cat wages.csv | sort -n -r -t, -k4 | head -10 | grep female | wc -l

# Part 3
val1=$(cat wages.csv | cut -d , -f 2,4| grep -e 12, | sort -n -t, -k2 | cut -d , -f 2 | sort -n | head -1)
val2=$(cat wages.csv | cut -d , -f 2,4| grep -e 16, | sort -n -t, -k2 | cut -d , -f 2 | sort -n | head -1)
echo "The difference between the minimum wage earner who graduated high school and the minimum wage earner who graduated college is:"
echo "$val1 - $val2" | bc
echo "The high school graduate makes more money??"
