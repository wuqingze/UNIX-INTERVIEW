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
#### 25) How can you display the duplicates in a file?

‘uniq -d’ command is useful to display duplicates from a file.
```
sort emp_data.txt | uniq -d
```

#### 26. I have a one file which contains employee name and department number in it. Can you display the employee count by GROUP BY department number?
![](./imgs/uniq-command-in-unix-group-by-count.jpg)
```
cut -d ',' -f2 emp_data.txt | sort | uniq -c
```

#### 28) Differentiate cmp command from diff command in Unix?

 The cmp command is used mainly to compare two files byte by byte, after which the first encountered mismatch is shown. On the other hand, the diff command is used to indicate the changes that is to be made in order to make the two files identical to each other.

![](./imgs/diff-command-cmp-command-in-unix.jpg)

#### 29) How would you count every occurrence of the term “unix” in all the files appearing under the current directory, and its subdirectories, recursively? 

```
grep -orI unix . | wc -l
```

To list every occurrence of the term “unix” on a separate line, one must run grep `-o` unix <path>. Adding the ‘r’ option to the command makes the search recursively process every file under the given path, and the ‘I’ option ensures that matches in binary files are ignored. In addition, the ‘w’ option can be included to match the exact term only, and ignore superstrings such as “unixsystem”, and to make the search case-insensitive, the i flag can be added as well:

```
grep -iworI unix . | wc -l
```

#### 30) How would you write a shell script that prints all the additional arguments passed to it in reverse order?

```
for (( i=${#}; i>0; i-- )); do
    echo $i
done
```

The arguments are available as ${n}, where n is the position of the argument. 

For example, $0 would give the name of the script, $1 would give the first additional argument, $2 the second, and so on. The total number of additional arguments is found in ${#}.

A loop that starts at ${#} and ends at 1 can be used to print each additional argument in reverse order.
