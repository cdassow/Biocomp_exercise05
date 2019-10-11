#remove first row with column names, pull out only columns 1 and 2, get all unique combinations, sort by gender
cat wages.csv | tail -n +2 | cut -d , -f 1,2 | sort -t, -u -k1,2 | sort -t, -k1 > wagecombos.csv 
# take the female group, sort by experience, write to uniqwages.csv
cat wagecombos.csv | head -n 16 | sort -t, -n -k2 > uniqwages.csv 
#take the male group, sort by experience, and append to uniqwages.csv
cat wagecombos.csv | tail -n 17 | sort -t, -n -k2 >> uniqwages.csv
