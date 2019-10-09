#Anna's part
#using the variable $1 as the wages.txt textfile

cat $1 | cut -d "," -f 1,2 | sort -k 2 | sort | tr "," " " | uniq > uniquewages.txt


#Clare's part
