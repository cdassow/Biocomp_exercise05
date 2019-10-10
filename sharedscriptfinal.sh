#Anna's part
#using the variable $1 as the wages.txt textfile
cat $1 | cut -d "," -f 1,2 | grep -v "gender" | tr "," " " | sort -u -k1,1 -k2,2g > uniquewages.txt

#Clare's part
#using the variable $1 as the wages.txt file
echo "Highest Wages"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | grep -v "gender" | sort -r -k3 | head -n 1
echo "Lowest Wages"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -k3 | head -n 1
echo "Number of Females in Top Ten"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 |head -10 | grep -c female


# Assignment Problem 3
echo "Min wage of 12 - Min wage of 16"
var1=$(cat wages.csv | cut -d "," -f 3,4 | tr "," " " | grep -w 12 | sort -n -k2 | head -1 | cut -d " " -f 2)
var2=$(cat wages.csv | cut -d "," -f 3,4 | tr "," " " | grep -w 16 | sort -n -k2 | head -1 | cut -d " " -f 2)
echo "$var2 - $var1" | bc

