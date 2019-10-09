# takes the minimum wage earner who completed 12 years of school and compares
# it to the minimum wage earner who completed 16 years of school
# usage: bash GradCollegeEffect.sh

val1=$(cat wages.csv | cut -d , -f 2,4| grep -e 12, | sort -n -t, -k2 | cut -d , -f 2 | sort -n | head -1)
val2=$(cat wages.csv | cut -d , -f 2,4| grep -e 16, | sort -n -t, -k2 | cut -d , -f 2 | sort -n | head -1)
echo "The difference between the minimum wage earner who graduated college and the minimum wage earner who graduated high school is:"
echo "$val1 - $val2" | bc
