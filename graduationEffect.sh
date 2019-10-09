#For Exercise 05 Assignment 3. This script determines the effect of graduating college on the minimum wage for earners in the wages.csv dataset
#USAGE: bash graduationEffect.sh filename

#high school
cut -d , -f 3-4 "$1" | grep -E "1[2-5]" > highschool.csv
countHS = echo wc -l highschool.csv
sumHS = 
hsWageAvg = $sumHS/$countHS | bc

#college
cut -d , -f 3-4 "$1" | grep -E "1[6-]" > college.csv
countC= echo wc -l college.csv
sumC=
collegeWageAvg = $sumC/$countC | bc

echo "$hsWageAvg - $collegeWageAvg" | bc
