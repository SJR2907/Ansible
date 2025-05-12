variables are key-value pair
variables are place holders to hold values 
In shell programming there is no datatypes: Every value is treated as text type/string type
All variables are divided into 2 types 
1) Environment variables/pre-defined variables
2) User defined variables
# env
How to change the prompt
PS1=name$
check for pre-defined and environment variables in Linux 
env.sh
#!/bin/bash 
echo "User name: $USER"
echo "User Home Directory: $Home"
echo "Default Shell Directry: $SHELL"
echo "Default Path: $PATH"

User defined variables:
syntax: variablename=value 
# it is recommended to used only UPPERCASE Characters 
# If variable contains multiple words, then these words, should be separated with_symbol
# variable names should not start with digit
GUSET=vivek
echo "Hello $Guest you are my frined"
conversation script:

echo "Hi vivek what are you doing"
echo "Learning Linux" 
echo "Oh take care vivek"
echo "Arun are you teaching Linux"

variable: Accessing the value of a variable by using $ symbol is called variable substitution.
syntax:
$variablename
${variablename}
Recommended to use ${variablename}
test.sh 
#!/bin/bash 
a=10
b=20
COURSE="Linux"
ACTION="SLEEP"
echo "values of a and b are: $a and $b"
echo "My Course is:${COURSE}"
echo "My Favourite Action: ${ACTION}"
echo "My Favourite Action: ${ACTION}ING"

Consider the following variable declare NAME="SJR" 
which of the following is valid way to print value of NAME?
a) echo NAME
B) echo $NAME
C) echo '$NAME'
4) echo "$NAME"
Answer: B,D 

Command Line Arguments:
******* symbols -> $# Number of arguments 
                   $0 To print the script name
                   $1 To print the first argument 
                   $@ To print the Total Arguments
                   $* To print the Total Arguments
                   $? Represent exit code of previously executed command or script 

How to pass the arguments in shell script ?
[root@client ~]# cat arg.sh
#!/bin/bash
echo "Number of arguments: $#"
echo "Print the script name: $0"
echo "print the first argument: $1"
echo "print the second argument: $2"
echo "Total arguments: $@
echo "previous command executed or not: $?"

How to read Dynamic Data from the user:

By using read keyword we can read dynamic data from the end user.

SHell scripting syntax:

echo: to print the message 
echo "message content"
variable:
values are stored in variable names 
syntax: variablename=value 
${variablename}
Name=vivek 
echo $NAME
syntax: # echo "Enter the message: $variablename" 
How to give the dynamic data to read the user input 
syntax: # read -p "$vivek the message:" name 
syntax: # read -s -p "$vivek the password:" passwd 

Write a script to Read student data and display to the console for confirmation:
student name, rollno. age marks 

read -p "Enter student name:" name 
read -p "Enter roll number:" rollno
read -p "Enter age:" age
read -p "Enter marks:" marks 
echo "List Student data:" 
echo "-----------------------"
echo "Enter student name: $name"
echo "Enter roll number: $rollno"
echo "Enter Age: $age"
echo "Enter marks: $marks" 
echo "--------------------------"

Read Employees details and save to emp.txt file 
Syntax: echo "$name:$rollno:$age:$marks" >> filename 
Below details are saved to the file. 



