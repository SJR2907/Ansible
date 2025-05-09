Example 1: Check if number is positive

read -p "Enter a number:" num

if [$num -gt 0]; then
  echo "Positive number"
else
  echo "zero or negative number"
fi