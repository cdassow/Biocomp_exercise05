#Exercise 05 Assignment 1 and 2
#USAGE: bash genderExp.sh filename delimitor

#Assignment 1
cut -d $2 -f 1-2 "$1" | sort -t $2 -u | sort -k1 -n | sort -k2 -n | tr "$2" " " > newwages.csv
#Assignment 2
echo Highest Earner
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 1
echo Lowest Earner
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | tail -n 2 | head -n 1
echo Number of Women in Top Ten Earners
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 10 | grep female | wc -l

#Assignment 3
a=$(cut -d $2 -f 3,4 "$1" | grep -E "16," | sort -t $2 -k 2 -n | head -n 1 | cut -d $2 -f 2)
b=$(cut -d $2 -f 3,4 "$1" | grep -E "12," | sort -t $2 -k 2 -n | head -n 1 | cut -d $2 -f 2)
echo Difference in Wages between HS and College Graduates
echo "$a - $b" | bc
