AWK
If it is tab or space separated use this command. This prints the second column
awk '{print $2}' awk_data.txt
NR - No of records
NF No of Fields
$0 Print everything
$1,$2 Field No
This searches the word bolivo
awk '/bolivo/{print $0}' awk_withspace
This prints the row which is 94
awk 'NR==94{print $0}' awk_withspace
Awk ‘condition/pattern{Action}’ filename
This prints the row of numbers from. Row number 94 to row number 97
awk 'NR==94,NR==97{print NR,$0}' awk_withspace
This prints empty rows
awk 'NF==0{print NR}' awk_withspace
Awk searches for multiple words
awk '/Bowie|Cherilyn|Dasha/{print $0, NR}' awk_withspace
If you want to ignore case sensitivity when you are searching for words
awk ‘BEGIN{IGNORECASE=1} /bowie/{print $0,NR}’ awk_withspace
To check if a column has a specific character
awk '$2 ~ /a|e/{print $2,NR}' awk_withspace
AWK command with field delimiter
awk -F, '{print $0}' awk_data.txt
awk for filtering a delimited column
awk -F, '$NF<150{print $0}' awk_data.txt
In the pattern use NF for last field which is salary column
To handle multiple delimiters use the below query
awk -F[,:] ‘{print $3}’ awk_data.txt
Only pattern and action should be enclosed within field no need to enclose -F[] in ‘’ in the command
To filter on a column using awk and filter the column based on data
cat /var/log/install.log | awk '$2 >= "23:25:08" && $2<= "23:25:44"{print $2}'
alway put filter or condition outside the action bracket
C18877:~ boduri$ ls -lrt | awk '$7=="Jul" {print $7,$8}'
Jul 15:50
Jul 11:52
FUNCTIONS
Gsub
awk 'gsub("Lily","LILA")' new_awk.txt
To combine functions
Awk ‘{gsub ‘(“Lily”,”LILA”}’; print } new_awk.txt
Length
this gives the length of number of characters in the column
awk -F, 'NR>1 {print $2,length($2)}' new_awl.txt
Index
awk -F, '/Lily/{print NR,index($0,"Lily")}' new_awl.txt
if we. Remove /Lily/ it will return the entire dataset and give the index
Hence we keep /Lily/ to search for the word and then find the index
awk -F, '/Lily/{print NR,index($0,"Lily")}' new_awl.txt
toupper(column)/tolower(column)
awk -F, '{print toupper($2)}' new_awl.txt
BEGIN / END
awk ‘BEGIN{start_action}      // before reading file
      pattern/condition{action}
     END{stop_Action}’       // after reading file
file_name
Sum of a column
awk -F, 'BEGIN{sum=0} {sum = sum+$5} END{print "sum of salary " sum}' new_awl.txt
So the middle action works on every line , begin action sets up before the file is read, end action is executed after the file is read
Here when variables are set in the beginning no need for “$” symbol. You. Can use the variable without prepending.
to skip the first row
awk -F, 'BEGIN{sum=0} NR>1{sum = sum+$5;print "sum of salary " sum} END{}' new_awl.txt
awk -F, 'BEGIN{sum=0} NR>1 && NF>0{sum = sum+$5} END{print "sum of salary " sum}' new_awl.txt
sum of salary 10468
awk -F, 'BEGIN{sum=0;count=0} NR>1{if($NF>0)sum=sum+$5;count++} END{print "the sum is "sum , "the count is " count , "the average is " sum/count}' new_awl.txt
the sum is 10468 the count is 20 the average is 523.4
perform sum on salary on checking column is as integer
awk -F, 'BEGIN { sum = 0 } NR > 1 && $5 ~ /^-?[0-9]+$/ { sum += $5; print $5, "  sum of salary", sum } END {}' awk_data.txt


