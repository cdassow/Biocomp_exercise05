#Anna's part
#using the variable $1 as the wages.csv textfile
cat $1 | cut -d "," -f 1,2 | tr "," " " | sort -n -k 2 | sort -u > uniquewages.csv

#Clare's part
#using the variable $1 as the wages.csv file
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 > highestwages.csv
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -k3 > lowestwages.csv
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 | grep -w female | head -10 > toptenfemales.csv
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 |head -10 | grep -c female > numberfemalesintopten.csv



