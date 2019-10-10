#For Exercise 05 Assignment 3. This script determines the effect of graduating college on the minimum wage for earners in the wages.csv dataset
#USAGE: bash graduationEffect.sh filename

echo "high school"
hs = cut -d , -f 3-4 "$1" | grep -E "1[2-5]" | sort -t , -k 2 -n | cut -d , -f 2 | tail -n 1

echo college
college = cut -d , -f 3-4 "$1" | grep -E "1[6-]" | sort -t , -k 2 -n | cut -d , -f 2 | tail -n 1

echo "$hs - $college" | bc
