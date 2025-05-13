Linux architecture 
she-bang
environment varialbes
user defined variables
dynamic data user input
command line arguments 
There is no datatypes in shell script 
variable dynamic user input operators conditions statements loops functions.
print echo 
user input read 
variablename=value 
variablename=$(())
echo "string message"
read -p "string message:" 
echo "string message: $variablename"
operators:
There are three types of operators:
Assignment and relational & logical operators in shell script 
Assignment: addtion +, subtraction -, multiplication *, division /, percentage % 
Relational: greaterthan(gt), lessthan(lt), greaterthan or equal to (ge), lessthan or equal to (le) 
            equal to(eq), not equal to (ne)
Logical: And (&&), or (||), not (!) alias to comparison operator
And condition: "Both conditions are true"
or condtion: "if any condition is true remaning conditions as become true"
not !: if does not exist the file it will print the echo message.

if statement:
sytnax: if [Condition];
        then
          statement is executed if condition is true
        else
          statement is executed if condition is true 
        fi 
Note: if condition is became true statement is executed. otherwise if condition is became failed else statement will be executed.

elif statement: we can write the two conditions:
syntax: if [Condition];
        then 
          statement is executed if condition is "true"
        elif [condition];
        then
          statement is executed elif condition is "true"
        else 
          statement is executed 
        fi 

Assignment operators script:
#!/bin/bash 
read -p "Enter A value:" A
read -p "Enter B value:" B
sum=$((A+B)) 
echo "Addition value: $sum"
subtraction=$((A-B))
echo "subrtraction value: $subtraction"
multiplication=$((A*B)) 
echo "multiplication value: $multiplication"
division=$((A/B)) 
echo "division value: $division"

write the two values using if condition?
#!/bin/bash 
read -p "Enter a value:" a
read -p "Enter b value:" b
if [ $a -gt $b ];
then
  echo "$a is greater than $b"
else
  echo "$b is greater than $a"
fi

elif script:
#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
if [ $a -gt $b ];
then
  echo "$a greater than $b"
elif [ $a -eq $b ];
then
  echo "$a both numbers are equal $b"
else
  echo "$b both numbers are not equal $a"
fi



