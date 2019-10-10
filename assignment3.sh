#write difference between college graduate and high school graduate wages:
#list (college graduate wages - high school graduate wages)
#usage: bash assignment3.sh

echo difference between college graduate wages and high school graduate wages:

college=$(cat wages.csv | cut -d , -f 3,4 | egrep [1]{1}[6]{1}[,] | cut -d , -f 2 | sort -n | head -1)
highschool=$(cat wages.csv | cut -d , -f 3,4 | egrep [1]{1}[2]{1}[,] | cut -d , -f 2 | sort -n | head -1)

echo "$college-$highschool" | bc
