Write a script to read 4 Digit integer number and print the sume of digits present in that number?

#!/bin/bash 

read -p "Enter Any 4-digit Integer Number:" n

a=$(echo $n |cut -c 1)
b=$(echo $n | cut -c 2)
c=$(echo $n | cut -c 3)
d=$(echo $n | cut -c 4)

echo "The sum of 4 digits:$[a+b+c+d]