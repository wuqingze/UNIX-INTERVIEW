awk '
{
    for(i=NF; i>0; i--){
        if(i == NF){
            s[NR] = $i;
        }else{
            s[NR] = s[NR] " " $i;
        }
    }
    print s[NR];
}

' data 
