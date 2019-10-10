#Exercise 05 Assignment 1. sort by gender and experience
#USAGE: bash genderExp.sh filename delimitor

cut -d "$2" -f 1-2 "$1" | tr "," " " | sort -k1 -t"$2" | sort -k2 -t"$2" -n > newwage.csv
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | tail -n 2 | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 10 | grep female | wc -l
a=$(cut wages.csv -d , -f 3,4 | grep -E "16," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
b=$(cut wages.csv -d , -f 3,4 | grep -E "12," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
echo "$a - $b" | bc
 
