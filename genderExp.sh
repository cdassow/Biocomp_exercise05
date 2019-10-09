#Exercise 05 Assignment 1. sort by gender and experience
#USAGE: bash genderExp.sh filename deliminator

cut -d "$2" -f 1-2 "$1" | tr "," " " | sort -k1 -t"$2" | sort -k2 -t"$2" -n
