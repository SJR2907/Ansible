<- Want to make it dynamic 
You can also ask the user for the number 
#! /bin/bash 
read -p "Enter a number:" num
echo "Multiplication Table of $num:"
for i in {1..10}; do 
  echo "$num * $i = $((num * i))"
done
