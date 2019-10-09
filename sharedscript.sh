#Anna's part
#using the variable $1 as the wages.txt textfile
cat $1 | cut -d "," -f 1,2 | tr "," " " | sort -n -k 2 | sort -u > uniquewages.txt

#Clare's part
