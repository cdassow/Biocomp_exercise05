# Solo code for assignment 5 - more for proof of concept and strategizing

## Part 1 - Create file containing the unique gender-yearsExperience combinations from /wages.csv/
#	    The file should contain gender in the first column and years in a second column (space delimited)
#	    Rows should be sorted first by gender and then by years, but pairings should be kept intact

# Inputs: None
# Usage: bash Ex5_codeS.sh

## Part 1 ----------------------------------------------------------------------------------------------------------
cat wages.csv | tail -n $(($(wc -l wages.csv | cut -d ' ' -f 1)-1)) | # Opens file and removes header (first line)
	tr ',' ' ' | cut -d ' ' -f 1,2 | # Converts , delimiters to spaces and isolates columns 1 and 2
	sort -k1,1 -k2,2n > output.csv # Sorts first column alphabetically and sorts second column numerically within
				       # the same categories, then outputs to output.csv

## Part 2 ----------------------------------------------------------------------------------------------------------
cat wages.csv | tail -n $(($(wc -l wages.csv | cut -d ' ' -f 1)-1)) | # Opens file and removes header (first line)
	cut -d ',' -f 4 | sort -n > temp.txt # Isolates fourth column, sorts numerically, then outputs to temporary file
high=$(cat wages.csv | grep -E $(cat temp.txt | tail -n 1) | # Finds line in wages.csv corresponding to the highest
							     # value in the temporary file
	cut -d ',' -f 1,2,4) # Isolates information regarding previously found line (highest earner)
low=$(cat wages.csv | grep -E $(cat temp.txt | head -n 1) | # Fins line in wages.csv corresponding to the lowest value
							    # in the temporary file
	cut -d ',' -f 1,2,4) # Isolates information regarding previously found line (lowest earner)
fem=0; # Initialize counting variable
for i in {1..10}
do
	fem=$(($fem+$(cat wages.csv | grep -E $(cat temp.txt | tail -n $i | head -n 1) | # Isolates single line from
											 # top 10 earners - found same
											 # way as above
	grep -c -E female))) # checks if the line subject is female
done
# Outputs
echo "The highest earner is a $(echo $high | grep -o -E [a-z]+) with " \
	"$(echo $high | grep -o -E [,][1-9][,] | grep -o -E [^,]) years of experience making " \
	"$(echo $high | grep -o -E [0-9]+\\.[0-9]+) money"
echo "The lowest earner is a $(echo $low | grep -o -E [a-z]+) with " \
	"$(echo $low | grep -o -E [,][1-9][,] | grep -o -E [^,]) years of experience making " \
	"$(echo $low | grep -o -E [0-9]+\\.[0-9]+) money"
echo "The number of females among the top 10 most paid is $fem"
rm temp.txt # Removes temporary files

## Part 3 ----------------------------------------------------------------------------------------------------------
cat wages.csv | tail -n $(($(wc -l wages.csv | cut -d ' ' -f 1)-1)) | # Opens file and removes header (first line)
	cut -d ',' -f 3,4 | grep -E 12[,] > HS.txt # Isolates school years and wages, then exports subjects with 12
						   # years of education to HS.txt
cat wages.csv | tail -n $(($(wc -l wages.csv | cut -d ' ' -f 1)-1)) | # Opens file and removes header (first line)
	cut -d ',' -f 3,4 | grep -E 16[,] > CLG.txt # Isolates school years and wages, then exports subjects with 16
						    # years of education to CLG.txt
HS_avg=$(cat HS.txt | cut -d ',' -f 2 | # Isolates wages from HS.txt
	awk '{total = total + $1}END{print total}') # Totals wages isolated from HS.txt
HS_avg=$(echo "$HS_avg / $(wc -l HS.txt | cut -d ' ' -f 1)" | bc -l) # Divides total by the number of lines in HS.txt
CLG_avg=$(cat CLG.txt | cut -d ',' -f 2 | # Isolates wages from CLG.txt
	awk '{total = total + $1}END{print total}') # Totals wages isolated from CLG.txt
CLG_avg=$(echo "$CLG_avg / $(wc -l CLG.txt | cut -d ' ' -f 1)" | bc -l) # Divides total by the number of lines in CLG.txt
# Outputs
echo "The average wages without only 12 years of school is $HS_avg"
echo "The average with 16 years of school is $CLG_avg"
rm HS.txt CLG.txt # Removes temporary files
