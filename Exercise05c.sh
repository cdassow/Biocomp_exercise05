#creates a tab delimited file for easier pulling of data
cat wages.csv | sed 's/\,/\t/g' >wages02.txt
#declare variables necessary for part 02
topSex=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | head -1 | cut -f1)
topExp=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | head -1 | cut -f2)
topWage=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | head -1 | cut -f4)
botSex=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | tail -1 | cut -f1)
botExp=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | tail -1 | cut -f2)
botWage=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | tail -1 | cut -f4)
femTopTen=$(cat wages02.txt | sort -k 4 -rV | sed -e '1d' | head -10 | cut -f1 | grep -c female)
#declare variables necessary for part 03
sumSec=$(awk '{if ($3==12) {sum +=$4; print sum}}' wages02.txt | tail -1)
totalSec=$(awk '{if ($3==12) {sum +=$4; print sum}}' wages02.txt | wc -l)
avgSec=$(echo "scale=5; $sumSec/$totalSec" | bc)
sumCollege=$(awk '{if ($3==16) {sum +=$4; print sum}}' wages02.txt | tail -1)
totalCollege=$(awk '{if ($3==16) {sum +=$4; print sum}}' wages02.txt | wc -l)
avgCollege=$(echo "scale=5; ($sumCollege/$totalCollege)/1" | bc)
#bc doesn't do scale for subtraction, need to trick it with dividing by 1
wageGap=$(echo "scale=2; ($avgCollege-$avgSec)/1" | bc)
#return answers for part 02
echo The top seller is $topSex, and they have $topExp years of experience. They earn $topWage
echo The lowest earner is $botSex, and they have $botExp years of experience. They earn $botWage
echo $femTopTen of the top 10 earners are female.
#return answers for part03
echo The average secondary school graduate earns $avgSec
echo The average college graduate earns $avgCollege
echo Therefore, assuming this dataset refers to minimum wage for earners, we can say that graduating college confers a minimum wage that is $wageGap more than those without a college degree.
#remove temporary wages02.txt file
rm wages02.txt
