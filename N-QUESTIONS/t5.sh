awk -F',' 'BEGIN{ SUM=0;TOTAL=0;}
{
    if($2 == ""){
        TOTAL = $1;
    }else{
        SUM += $2;
    }
}
END{
    print "TOTAL " TOTAL;
    print "SUM " SUM;
    if(SUM == TOTAL){
        print "matched!";
    }else{
        print "no matched!";
    }
}' $1
