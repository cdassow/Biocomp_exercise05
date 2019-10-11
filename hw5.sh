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

