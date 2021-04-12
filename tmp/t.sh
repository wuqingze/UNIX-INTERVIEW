tmp=$(date "+%Y-%m-%d-%H:%M:%S")
let cnt=0
for f in `ls ./`; do
    if [ -f $f ] && [ "$f" != "t.sh" ] && [ "$f" != "t" ]; then
        cat "$f" >> $tmp
        cnt=$((cnt+1))
    fi
done
mv $tmp "f"$((cnt+1))
