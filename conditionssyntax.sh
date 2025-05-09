📘 Shell Scripting: if Condition Notes
✅ 1. Syntax of if condition

if [ condition ]; then
  # code to execute if condition is true
fi
Note: A space is required after [ and before ].

🔁 2. if...else Syntax

if [ condition ]; then
  # code if condition is true
else
  # code if condition is false
fi
🔀 3. if...elif...else Syntax

if [ condition1 ]; then
  # if condition1 is true
elif [ condition2 ]; then
  # if condition2 is true
else
  # if none of the above conditions are true
fi
🧪 Condition Operators
Operator	Description
-eq	equal to (integers)
-ne	not equal to (integers)
-gt	greater than
-lt	less than
-ge	greater than or equal to
-le	less than or equal to
-z	string is empty
-n	string is not empty
==	strings are equal
!=	strings are not equal
-f	file exists and is regular
-d	directory exists