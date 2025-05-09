1. Write a script to Read 2 Integer Numbers and print sum?

#!/bin/bash 

read -p "Enter First Number:" a
read -p "Enter Second Number:" b
sum=$[a+b]
echo "The Sum:$sum"