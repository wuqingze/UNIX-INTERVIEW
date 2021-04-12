awk -F"," '{
    if(NR != 1){
        if($3+$4>100){
            print $1,$2,$3+$4;
        }
    }
}' file.txt | sort -nrk 3 | awk '{print $1,$2}'
