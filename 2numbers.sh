Write a Script to find Greater of 2 Numbers?
#!/bin/bash 
read -p "Enter First Number:" $A 
read -p "Enter Second Number:" $B 
if [ $A -gt $B ];
then
  echo "First number is greater than second number"
else
  echo "First number is less than second number"
fi

Write a Script to check whether numbers OR equal or not if the numbers are not equal then print greater number?
#!/bin/bash 
read -p "Enter First Number:" A
read -p "Enter Second Number:" B
if [ $A -eq $B ];
then 
  echo "Both numbers are equal"
else
  echo "Both numbers are not equal"
fi