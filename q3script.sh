#working on q3

cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[26]{1}," | tr , " " | sort -k1,1
