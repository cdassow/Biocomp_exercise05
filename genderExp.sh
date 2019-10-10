#Exercise 05 Assignment 1 and 2
#USAGE: bash genderExp.sh filename delimitor

#Assignment 1
cut -d , -f 1-2 wages.csv | grep -v gender | sort -u | tr ',' ' ' | sort -k1,1d -k2,2n > newwages.csv
#Assignment 2
echo Highest Earner
cut -d , -f 1,2,4 wages.csv | sort -t , -k 3 -n -r | head -n 1
echo Lowest Earner
cut -d , -f 1,2,4 wages.csv | sort -t , -k 3 -n -r | tail -n 2 | head -n 1
echo Number of Women in Top Ten Earners
cut -d , -f 1,2,4 wages.csv | sort -t , -k 3 -n -r | head -n 10 | grep female | wc -l

#Assignment 3
a=$(cut -d , -f 3,4 wages.csv | grep -E "16," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
b=$(cut -d , -f 3,4 wages.csv | grep -E "12," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
echo Difference in Wages between HS and College Graduates
echo "$a - $b" | bc
