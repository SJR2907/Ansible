✅ 1. Declaring a Variable
variable_name=value
⚠️ Rules:
No spaces around the =

Variable names can contain letters, numbers, and underscores

Variable names must start with a letter or underscore, not a number

🔧 Example:

name="DevOps"
age=25
✅ 2. Accessing a Variable
echo $variable_name
🔧 Example:
echo $name
Or using curly braces to prevent ambiguity:

echo ${name}
✅ 3. Command Substitution
Store the output of a command in a variable using backticks or $(...):

date_now=$(date)
🔧 Example:
today=$(date +%Y-%m-%d)
echo "Today's date is $today"
✅ 4. Read User Input into a Variable
read variable_name
🔧 Example:
echo "Enter your name:"
read user
echo "Hello, $user!"
✅ 5. Exporting a Variable
To make a variable available to child processes:
export VAR_NAME=value
✅ 6. Default Value Syntax
${variable:-default}
If variable is unset or empty, use "default".

🔧 Example:
echo "User: ${username:-guest}"
✅ 7. Declaring Constants (Readonly Variables)
readonly PI=3.14
Trying to change PI after this will cause an error.

✅ 8. Unset a Variable
unset variable_name
🧠 Real-Time Example:
#!/bin/bash

project="AI Bootcamp"
mentor="John Doe"
today=$(date +%A)

echo "Welcome to $project!"
echo "Today is $today and your mentor is $mentor."