awk -F"," '
BEGIN{OFS=","}
{
    if(NR != 1){
        if($3+$4>100){
            print $3+$4,$1,$2;
        }
    }
}
' file.txt | sort -r | awk -F"," '{print $2,$3}'
