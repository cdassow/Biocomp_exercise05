#Creates a modified version of wages.csv to include only gender, yearsExperience, wage sorted by wage
#Usage bash Ex5Pt2.sh wages.csv
cat $1 | sed '1d' | cut -d , -f1,2,4 | sort -t ',' -k3,3 >> wages2.csv
#Returns the gender, yearsExperience, wage of highest earner
echo "the gender, yearsExperience, wage of the highest earner"
cat wages2.csv | tail -1
#Returns the gender, yearsExperience, wage of lowest earner
echo "the gender, yearsExperience, wage of the lowest earner"
cat wages2.csv | head -1
#Returns number of females in top ten earners
echo "the number of females is the top ten earners"
cat wages2.csv | tail -10 | grep -c 'female'
