#!/bin/bash

#echo this is my first shell script
#touch testfile
#ls
#echo end of shell script


# This is comment
#echo testing comments in shell script

# Accessing environment variable
#printenv
#echo $USER

# creating and accessing user defined variable
#variable_name="Software Engineer"
#echo $variable_name

# integer comparison
#-eq =
#-ne !=
#-gt >
#-ge >=
#-lt <
#-le <=

# String Comparison

#==
#!=
#\< less than in ascii order
#\> greater than in ascii order

# if condition
#x=10
#y=10
#
#if [ $x -ne $y ]
#then
#  echo "Not Equal"
#else
#  echo "equal"
#fi

# switch
#cars="bmw"
#pass the variable in string
#case "$cars" in
#  #case 1
#  "bmw") echo "you selected the $cars" ;;
#  "audi") echo "you selected $cars" ;;
#  #case 2
#
#esac


#Loops
#x=2
#while [ $x -lt 6 ]
#do
#  echo $x
#  x=`expr $x + 1`
#done

# while loop runs till condition is false * until loop runs till condition is true

#expr 12 + 8
#
#expr 12 \* 2
#
#echo "Enter two numbers"
#read x
#read y
#sum=`expr $x + $y`
#echo "Sum = $sum"


#Position arguments They are accessed by variables $0, $1, $2 ... $9. Beyond that, they are referenced by ${10}, ${11}
#echo "no of arguments is $#"
#echo "name of the script $0"
#echo "first argument is $1"
#echo "second argument is $2"

#b=$(pwd)
#c=`pwd`
#echo $b
#echo $c
#d=$(ls -ltr /Users/amurikinati/* | grep pdf )
#echo $d


# exit codes
#pwd
# returns 0 if current command executes successfully
#echo $?
#pwds
# return 1 to 155 if command is unsuccessful
#echo $?

echo $SHELL

#This command will print the path to the shell executable. Another way is by using the ps command:

ps -p $$


#File Management -> cp, mv, rm, mkdir
#Navigation -> cd, pwd, ls
#Text Processing -> cat, grep, sort, head
#System Monitoring -> top, ps, df
#Permissions and Ownership -> chmod, chown, chgrp
#Networking - > ping, wget, curl, ssh, scp, ftp
#Compression and Archiving - > tar, gzip, gunzip, zip, unzip
#Package Management - > dnf, yum, apt-get
#Process Management -> kill, killall, bg, killall, kill

#!/bin/bash

#var1="Devil"
#var2=23
#echo $var1 $var2
#
#unset var1
#
#echo $var1 $var2
#
#
#var1="Devil"
#var2=23
#readonly var1
#echo $var1 $var2
#var1=23
#echo $var1 $var2







