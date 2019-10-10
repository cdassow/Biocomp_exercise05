#Exercise 05 Assignment 1 and 2
#USAGE: bash genderExp.sh filename delimitor

#Assignment 1
cut -d "$2" -f 1-2 "$1" | tr "," " " | sort -k1 -t"$2" | sort -k2 -t"$2" -n > newwage.csv

#Assignment 2
echo Highest Earner
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 1
echo Lowest Earner
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | tail -n 2 | head -n 1
echo Number of Women in Top Ten Earners
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 10 | grep female | wc -l

#Assignment 3
a=$(cut "$1" -d $2 -f 3,4 | grep -E "16," | sort -t $2 -k 2 -n | head -n 1 | cut -d $2 -f 2)
b=$(cut "$1" -d $2 -f 3,4 | grep -E "12," | sort -t $2 -k 2 -n | head -n 1 | cut -d $2 -f 2)
echo Differnece in Wages between HS and College Graduates
echo "$a - $b" | bc
