#Exercise 05 Assignment 1. sort by gender and experience
#USAGE: bash genderExp.sh filename delimitor

cut -d "$2" -f 1-2 "$1" | tr "," " " | sort -k1 -t"$2" | sort -k2 -t"$2" -n > newwage.csv
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | tail -n 2 | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 10 | grep female | wc -l

