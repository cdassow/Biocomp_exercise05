#!/bin/sh

# Task 1
cut -d , -f 1,2 wages.csv | sed '1d' | sort -t , -k 1 | sort -t , -n -k 2 | uniq > gender_experience.csv

# Task 2
echo " the gender, yearsExperience, and wage for the highest earner is "
sort -t , -k 4 -n -r wages.csv | head -n 1 | cut -d , -f 1,2,4 

echo " the gender, yearsExperience, and wage for the lowest earner is "
sed '1d' wages.csv | sort -t , -k 4 -n | head -n 1 | cut -d , -f 1,2,4 

echo " the number of females in the top ten earners is "
sed '1d' wages.csv | sort -t , -k 4 -n -r | head -n 10 | grep female | wc -l

# Task 3
echo "the effect of graduating college on the minimum wage is"
val1=$(cut -d, -f 3,4 wages.csv | grep '12,' | sort -t , -k 2 | head -1 | cut -d , -f 2)
val2=$(cut -d, -f 3,4 wages.csv | grep '16,' | sort -t , -k 2 | head -1 | cut -d , -f 2)

echo "$val1 - $val2" | bc

