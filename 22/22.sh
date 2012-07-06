sed 's/,/\n/g' names.txt|sed 's/"//g'|sort|awk -f 22.awk
