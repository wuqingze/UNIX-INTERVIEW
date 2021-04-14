for f in `ls ./`;
do
    if [[ "$f" =~ ^[^t].*$ ]] && [[ -f $f ]]; then
        #line=`wc -l $f`
        #echo $line
        wc -l $f
    fi
done
