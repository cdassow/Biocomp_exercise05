cat $1 | sed -e '1d' | cut -d ',' -f 1,2 | sort  -t ',' -k1,1 -k2n| sed 's/,/ /g'
