#Assignment 5 Probelm 3
#use

cat $1 | cut -d "." -f 3,4 | tr "," "" | sort -n -k2

