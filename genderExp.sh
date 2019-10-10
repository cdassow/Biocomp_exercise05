#Exercise 05 Assignment 1 and 2
#USAGE: bash genderExp.sh filename delimitor

#Assignment 1
cut -d "$2" -f 1-2 "$1" | tr "," " " | sort -k1 -t"$2" | sort -k2 -t"$2" -n > newwage.csv
<<<<<<< HEAD
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | tail -n 2 | head -n 1
cut wages.csv -d , -f 1,2,4 | sort -t , -k 3 -n -r | head -n 10 | grep female | wc -l
a=$(cut wages.csv -d , -f 3,4 | grep -E "16," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
b=$(cut wages.csv -d , -f 3,4 | grep -E "12," | sort -t , -k 2 -n | head -n 1 | cut -d , -f 2)
echo "$a - $b" | bc
 
=======

#Assignment 2
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 1
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | tail -n 2 | head -n 1
cut -d "$2" -f 1,2,4 "$1" | sort -t "$2" -k 3 -n -r | head -n 10 | grep female | wc -l

>>>>>>> edbcf0b36185aef2898a83b0f822f5bdd9e28bb4
