# effect of graduating college on minimum wage for earners
# usage: bash GradCollegeEffect.sh

val1 = (cat wages.csv | cut -d , -f 2,4| grep -e 12, | sort -n -t, -k2 | cut -d , -f 2)

