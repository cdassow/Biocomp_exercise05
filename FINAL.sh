# Takes unique gender-yearsExperience combos in wages.csv, sorts by gender 
# then number, inputs two columns into new space delimited file
# Usage: from directory with wages.csv, bash FINAL.sh

for file in wages.csv
do
cat $file | cut -d , -f 1,2 | grep -v "gender" | tr "," " " | sort -k1,1 -k2,2g | uniq > gender-yearsExperience.txt
echo "Gender, yearsExperience, and wage for highest earner:"
cat $file | tr "," " " | grep -v "gender" | sort -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4
echo "Gender, yearsExperience, and wage for lowest earner:"
cat $file | tr "," " " | grep -v "gender" | sort -k 4 -n | head -n 1 | cut -d , -f 1,2,4
echo "Number of females in top 10 earners:"
cat $file | tr "," " " | sort -k 4 -n -r | head -n 10 | cut -d , -f 1,2,4 | grep "female" -c
echo "difference between minimum wage for college grads vs non college grads"
grad=$(cat $file | grep -E "[a-z]+,[0-9]{1,2},16,[1-9].[1-9]+" | cut -d , -f 4 | sort -g | head -n 1)
nograd=$(cat $file | grep -E "[a-z]+,[0-9]{1,2},12,[1-9].[1-9]+" | cut -d , -f 4 | sort -g | head -n 1)
echo "$grad - $nograd" | bc
done

