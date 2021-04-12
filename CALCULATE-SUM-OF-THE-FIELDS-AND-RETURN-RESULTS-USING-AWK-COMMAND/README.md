### CALCULATE SUM OF THE FIELDS AND RETURN RESULTS USING AWK COMMAND

**Problem Statement:**

Student details are stored in the following format:

“Roll no,Name,Scorel,Score2”

Write Unix command to display the roll no and the name of all the students whose total score is greater than 100. The student details are to be displayed sorted in descending order of the total score. The total score is to be calculated as follows
Total score = Scorel + Score2

The student details are provided as a command-line argument when the file containing your command will run. Use appropriate command line argument($1,$2 etc.) to access the details.
For more details, please refer to the sample input and output below.

Sample Input :
```
Roll No,Name,Scorel,Score2
123,Hari,87,78
367,Madnav,40,50
400,Naina,99,87
567,Amy,35,68
812,Ravi,58,98
```

Sample output :
```
400 Naina
123 Hari
812 Ravi
567 Amy
```
