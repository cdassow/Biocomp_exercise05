#usage bash effect_of_college.sh wages.csv
echo "Average of all non-college graduates: "
cat $1 | cut -d , -f 3,4 | egrep [0-15], | cut -d ',' -f 2 | awk '{ total += $1 } END {print total/NR}' 
echo ' '
echo "Average of people who at least graduated college:"
cat $1 | cut -d , -f 3,4 | grep "16," | cut -d ',' -f 2 | awk '{ total += $1 } END {print total/NR}'  
