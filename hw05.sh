## Question 1 
echo "Question 1"
cat $1 | tr ',' ' ' | sort --field-separator=' ' --key=$2,$3 | cut -d ' ' -f $2,$3 | grep -v gender | grep -v year
 
## Question 2
echo "Question 2"
## a.
echo "gender highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295 {print $1}'

echo "years experience highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295  {print $2}'

echo "wage highest earner"
sort -k 4 wages.csv | tr "," " " | awk 'NR==3295 {print $3}'

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
echo "Question 3"
echo "The difference between 16 year and 12 year minimum wage"

val1=$(cat $1 | grep 16 | cut -d ',' -f $4 | sort -n | head -n 1)

val2=$(cat $1 | grep 12 | cut -d ',' -f $4 | sort -n | head -n 1)

echo $val1 - $val2 | bc

echo "effect of graduating college"

## grep for 12 or 16 years of education, then sort by wage
## then use awk to get wage and subtract 
echo "$val1 - $val2" | bc
