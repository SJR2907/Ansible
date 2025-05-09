a=10
b=20

if [ $a -eq $b ]; then
  echo "Numbers are equal"
elif [ $a -gt $b ]; then
  echo "a is greater"
else
  echo "b is greater"
fi
