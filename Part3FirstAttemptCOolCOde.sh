# Brittni helped me make this cool code for part 3 before we realized the
# question was a lot simpler !!!
# effect of graduating college on minimum wage for earners
# usage: bash Part3FirstAttemptCOolCOde.sh

val1=$(cat wages.csv | cut -d , -f 2,4| grep -e 12, | sort -n -t, -k2 | cut -d , -f 2 | tr '\n' ' ')

count=0
total=0

for i in $val1
do
	total=$(echo $total + $i | bc)
	count=$(echo $count+1 | bc)
done


avg12=$(echo $total/$count | bc)
echo $avg12

val2=$(cat wages.csv | cut -d , -f 2,4| grep -e 16, | sort -n -t, -k2 | cut -d , -f 2 | tr '\n' ' ')

count=0
total=0

for i in $val2
do
        total=$(echo $total + $i | bc)
        count=$(echo $count+1 | bc)
done

avg16=$(echo $total/$count | bc)
echo $avg16
echo "$avg16-$avg12" | bc
