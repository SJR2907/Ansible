Write a Script to find Greater of 2 Numbers 

#!/bin/bash

read -p "Enter First Number:" a
read -p "Enter Second Number:" b

if [ $a -gt $b ]
then 
  echo "Greater Number is:$a"
else
  echo "Greater Number is:$b"
fi

what is meant by ping 
# ping -c 5 google.com > /dev/null 2>&1 
> /dev/null: hide the output 
2>: redirect standard output
&1: redirect standard error 