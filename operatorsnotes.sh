✅ 1. Arithmetic Operators
Used to perform mathematical operations.

Operator	Description
+	Addition
-	Subtraction
*	Multiplication
/	Division
%	Modulus (remainder)

Syntax:

$((expression))
🔧 Example:
#!/bin/bash
a=10
b=3

sum=$((a + b))
echo "Sum: $sum"

product=$((a * b))
echo "Product: $product"
Real-time Scenario: A script to calculate monthly salary.
basic=50000
bonus=5000
salary=$((basic + bonus))
echo "Total Salary: ₹$salary"

✅ 2. Relational (Comparison) Operators
Used to compare numeric values.

Operator	Description
-eq	Equal to
-ne	Not equal to
-gt	Greater than
-lt	Less than
-ge	Greater than or equal to
-le	Less than or equal to

Syntax:

[ $a -eq $b ]
🔧 Example:
#!/bin/bash
a=15
b=10

if [ $a -gt $b ]; then
  echo "$a is greater than $b"
fi
Real-time Scenario: Check disk usage and alert if usage > 80%.

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
  echo "Warning: Disk usage is above 80% ($usage%)"
fi
✅ 3. Logical Operators
🧮 Logical AND (&&) and OR (||)
Used in conditions to combine multiple expressions.

Operator	Description
&&	Logical AND (both true)
`	
!	NOT (negate)

🔧 Example:
a=10
b=20

if [ $a -lt 15 ] && [ $b -gt 15 ]; then
  echo "Both conditions are true"
fi
Real-time Scenario: Check if a file exists and is readable.

file="/etc/passwd"

if [ -f "$file" ] && [ -r "$file" ]; then
  echo "$file is readable"
else
  echo "$file is not readable or doesn’t exist"
fi
✅ 4. String Operators
Operator	Description
=	Equal
!=	Not equal
-z	String is null (zero length)
-n	String is not null

🔧 Example:

str1="hello"
str2="world"

if [ "$str1" != "$str2" ]; then
  echo "Strings are different"
fi
Real-time Scenario: Check if user input is empty.

read -p "Enter your name: " name

if [ -z "$name" ]; then
  echo "You didn’t enter a name!"
else
  echo "Hello, $name!"
fi
✅ 5. File Test Operators
Operator	Description
-e	File exists
-f	Is a regular file
-d	Is a directory
-s	File is not empty
-r	Is readable
-w	Is writable
-x	Is executable

🔧 Example:
file="/etc/hosts"

if [ -f "$file" ]; then
  echo "$file is a regular file"
fi
Real-time Scenario: Log file rotation

log="/var/log/myapp.log"

if [ -f "$log" ] && [ -s "$log" ]; then
  mv "$log" "$log.old"
  echo "Log rotated"
else
  echo "No log file to rotate"
fi
✅ 6. Assignment Operator (=)
Used to assign values to variables.

name="DevOps"
echo "Course: $name"
✅ 7. Ternary Operator in Shell (Using && and ||)
Shell has no direct ternary, but this is equivalent:

[ $a -gt $b ] && echo "a > b" || echo "a <= b"
✅ Summary Table
Category	Example
Arithmetic	sum=$((a + b))
Comparison	[ $a -eq $b ]
Logical	[ $a -gt 10 ] && [ $b -lt 5 ]
String	[ -z "$str" ]
File	[ -f /path/to/file ]