#working on q3
#USAGE: bash q3script.sh


#both at once?: cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[26]{1}," | tr , " " | sort -k1,1

#High School Min
HighSchoolMin=$(cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[2]{1}," | tr , " " | sort -k2,2r | tail -n 1 | cut -d " " -f 2)

#College Min
CollegeMin=$(cat wages.csv | cut -d "," -f 3,4 | egrep "^[1]{1}[6]{1}," | tr , " " | sort -k2,2r | tail -n 1 | cut -d " " -f 2)

Difference=$($CollegeMin-$HighSchoolMin | bc)

echo The difference in minimum wages between high school and college graduates is $Difference.
