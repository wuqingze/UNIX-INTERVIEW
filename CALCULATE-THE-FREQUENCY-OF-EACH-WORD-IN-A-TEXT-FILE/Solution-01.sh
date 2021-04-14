sed -E 's/\s+/\n/g' gameofthrones.txt | grep -v "^$" | sort | uniq -c | sort -rnk 1
