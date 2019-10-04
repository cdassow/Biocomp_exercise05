# Takes unique gender-yearsExperience combos in wages.csv, sorts by gender 
# then number, inputs two columns into new space delimited file
# Usage: from directory with wages.csv, bash task1.sh

for file in wages.csv
do
cat $file | cut -d , -f 1,2 | grep -v "gender" | tr "," " " | sort -k1,1 -k2,2g | uniq > gender-yearsExperience.txt
done

