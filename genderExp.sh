file=wages.csv
delimiter=','
cut -d "$delimiter" -f 1-2 "$file" | tr "," " " > genderYrsExp.csv
