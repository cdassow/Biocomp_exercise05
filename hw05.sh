## Question 1 
cat $1 | tr ',' ' ' | sort --field-separator=' ' --key=$2,$3 | cut -d ' ' -f $2,$3 | grep -v gender | grep -v year
 
## Question 2
echo gender
awk 'NR==1 {print $1}'

## Question 3


