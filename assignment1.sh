#write a file with each uniqe gender/yearsExperience combo in wages.csv
#usage: bash assignment1.sh

cat wages.csv | cut -d , -f 1,2 | grep [mf] | tr ',' ' ' | sort -k1,1 -k2n | uniq
