#QUESTION 2 COMPLETE

#usage: bash q2script.sh



# top earner

TopEarner=$(cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | head -n 2 | tail -n 1)

echo The top earner is $TopEarner



#lowest earner

LowEarner=$(cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | tail -n 1)

echo The bottom earner is $LowEarner



#top 10

GlassCeiling=$(cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k 3 -r | head -n 11 | tail -n 10 | cut -d " " -f 1 | egrep "^[f]" | wc -l)

echo There are only $GlassCeiling females in the top 10 earners



