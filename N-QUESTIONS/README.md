### UNIX INTERVIEW QUESTIONS AND ANSWERS – 1 

#### 1. How can you write the contents of multiple files in current directory to a single file?
```
tmp=$(date "+%Y-%m-%d-%H:%M:%S")
cnt=1
for file in `ls ./`;do
    if [ -f $file ]; then
        cat $file >> tmp
        cnt=$((cnt+1))
    fi
done
mv tmp "file"$cnt
```

#### 2. How can I reverse a word like ‘Unix’ to ‘xinU’ ?
```
echo Unix | rev
```

#### 3. How to display the fields in a text file in reverse order?

**Sulution-1**
```
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
' file
```

**Solution-2**
```
awk ' BEGIN {ORS=""} 
{ 
    for(i=NF;i>0;i--){ 
        print $i," "; 
        print "\n"
    }
}' filename
```

#### 4.Write a command to find the sum of bytes (size of file) of all files in a directory.
```
ls -l | grep -v / | awk 'BEGIN{sum=0;}{sum+=$5;}END{print sum;}'
```

#### 5.Write a command to print the lines which end with the word “unix”?
```
grep -P "unix$" file
```

#### 7.How to remove the first 2 lines from a file?
```
sed -i '1,2 d' file
```
