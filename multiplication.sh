script: Multiplication 5th Table

#!/bin/bash 
echo "Multiplication 5th Table:"
for i in {1..10};
do
 echo "5 * $i = $((5 * $i))"
done 

Explanation:
# for i in {1..10}: Loops from 1 to 10.
# $((5 * i)): Calculate the product of 5 and i.
# echo: Prints the formatted string