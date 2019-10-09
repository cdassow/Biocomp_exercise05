#Anna's part
#using the variable $1 as the wages.csv textfile
cat $1 | cut -d "," -f 1,2 | grep -v "gender" | tr "," " " | sort -u -k1,1 -k2,2g > uniquewages.txt

#Clare's part
#using the variable $1 as the wages.csv file
echo "Highest Wages"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 
echo "Lowest Wages"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -k3
echo "Top Ten Females"  
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 | grep -w female | head -10 
echo "Number of Females in Top Ten"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -r -k3 |head -10 | grep -c female



