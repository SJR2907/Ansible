write a script to read employee monthly salary and print his bonus. the bonus should be 25% of Annual Salary 

#!/bin/bash

read "Enter employee monthly salary:" salary 

annul_salary=$[salary*12]
bonus=$[annual_salary*25/100]
echo "The Bonus:$bonus