awk '{
    if(NR%2==0){
        print $0;
        print "====";
    }else{
        print $0;
    }
}' $1 
