#For Exercise 05 Assignment 3. This script determines the effect of graduating college on the minimum wage for earners in the wages.csv dataset
#USAGE: bash graduationEffect.sh filename

#high school
cut -d , -f 3-4 "$1" | grep -E "1[2-5]" > highschool.csv
hsWageAvg = avg col 4 highschoo.csv

#college
cut -d , -f 3-4 "$1" | grep -E "1[6-]" > college.csv
collegeWageAvg = avg col 4 college.csv

echo "$hsWageAvg - $collegeWageAvg" | bc

#cp columns 3 and 4, separate high school graduates (3rd column, 12=<16) and college graduates (3rd column, 16=<) into separate csv files maybe outside the script
#take average of 4th column for hs and college
#subtract college_avg_wage - hs_avg_wage = final answer
