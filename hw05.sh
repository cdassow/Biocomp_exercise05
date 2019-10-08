## Question 1

## Question 2
## a.
echo "gender highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295 {print $1; exit}'

echo "years experienc highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295  {print $2}'

echo "wage highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295 {print $3}

## b.
echo "gender lowest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==1 {print $1}'

echo "years experience lowest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==1 {print $2}'

echo "wage lowest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==1 {print $3}'

## c.
echo "number of females in top ten earners"
cat wages.csv | head -n 10 | grep "female" | wc -l

## Question 3


