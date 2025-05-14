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

ping -c 1 google.com > /dev/null 2>&1	See nothing (everything hidden)
ping -c 1 google.com	See full output and errors
ping -c 1 google.com 2>&1 >/dev/null	See only errors
ping -c 1 google.com > /dev/null 2> error.log	Output hidden, errors in error.log
ping -c 1 google.com &> output.log	Both stdout and stderr in output.log

exit 0	Exit script successfully
exit 1	Exit with error
sleep 5	Pause for 5 seconds
sleep 1m	Pause for 1 minute