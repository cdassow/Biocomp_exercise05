#QUESTION 3 COMPLETE
#USAGE: bash q3script.sh


#High School Min
HighSchoolMin=$(cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[2]{1}," | tr , " " | sort -k2,2r | tail -n 1 | cut -d " " -f 2)

#College Min
CollegeMin=$(cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[6]{1}," | tr , " " | sort -k2,2r | tail -n 1 | cut -d " " -f 2)

Difference=$(echo "$CollegeMin-$HighSchoolMin" | bc)

echo The difference in minimum wages between high school and college graduates is $Difference.
