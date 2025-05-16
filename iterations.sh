for loop syntax:
for variable in list 
do
 commands
done

print from 1 to 10

eg: for i in 1 2 3 4 5 6 7 8 9 10
    do 
      echo "list numbers: $i" 
    done 
eg2: for name in arun ramya mom dad
     do 
       echo "Hello $name!" 
    done 

what is meant by for loop
# for loop is used to repeat a set of commands for a specific list of values or range of numbers. 

while loop:
syntax: while [ condition ]
        do 
         commands 
        done 

eg: To print the numbers form 0 to 5 
    #!/bin/bash 
    Declare the variable 
    count=0
    while [ $count -le 5 ]
    do 
     echo "print the numbers from 0 to 5: $count
           ((count++))
    sleep 1
    done 

eg:2 
[root@client ~]# cat whileloop2.sh
#!/bin/bash
count=10
while [ $count -ge 5 ]
do
 echo "print the numbers from 0 to 5: $count"
       ((count--))
 sleep 1
 done

Break syntax in shell script: 
for var in list 
do 
 if [ condition ];
 then
  break
fi
 commands
done 

eg: break in a forloop?
for i in 1 2 3 4 5 6
do 
if [ $i -eq 6 ]; 
then 
  echo "Breaking at $i" 
  break 
  fi 
   echo "enter value: $i" 
   sleep 1
  done 

  continue in for loop?
  syntax: for variable in list 
          do 
           if [ condition ];
           then
            commands
            continue
            fi 
            command 
            done 
eg: #!/bin/bash 
    for item in 1 2 3 4 5 6
    do 
     if [ $item -eq 4 ]; 
     then 
      echo "skipping value at $item" 
      continue 
      fi 
       echo "Enter value: $item" 
     done

while loop shell script: 

break in a while loop
syntax: 
 while [ condition ]
 do
 if [ condition ];
 then
   command
   break 
   fi
   command
   done 

count=3 
while [ $count -lt 8 ] 
do 
if [ $count -eq 6 ]; 
then 
  echo "breaking the value: $count"
  break 
  fi 
  echo "numbers list: $count" 
        ((count++))
  done 

Array: 
An array is a variable that can hold multiple values (strings or numbers) under a single name and accessed using index numbers.
 Shell supports indexed arrays (starts from index 0).
 Array syntax in Bash:
#  my_array=(value1 value2 value3)

eg: Basic Array Operations.

#!/bin/bash

fruits=("apple" "banana" "orange")

echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"

Loop through an Array: 

cities=("skht" "tpt" "Hyd" "Mumbai")
for city in ${cities[@]}
do 
  echo "list cities: $city"
done

Eg:3 Add and Modify Array Elements
colours=("blue" "orange" "yellow")
colours[3]="purple"
colours[4]="green"
echo "updated colours: ${colours[@]}"

functions:
#!/bin/bash

# ✅ Function 1: Monitor Disk Usage
check_disk() {
    echo "🔍 Checking Disk Usage..."
    df -h | grep -E '^/dev/' | awk '{print $1, $5, $6}'
    echo
}

# ✅ Function 2: Check Memory Usage
check_memory() {
    echo "🔍 Checking Memory Usage..."
    free -h
    echo
}

# ✅ Function 3: Check if a service is running
check_service() {
    service_name=$1
    echo "🔍 Checking service: $service_name"
    if systemctl is-active --quiet $service_name; then
        echo "✅ Service '$service_name' is running."
    else
        echo "❌ Service '$service_name' is NOT running."
    fi
    echo
}

# ✅ Function 4: Main Menu
main() {
    echo "=== System Health Monitor ==="
    check_disk
    check_memory
    check_service nginx     # You can change to httpd, mysql, ssh, etc.
    check_service ssh
}

# ✅ Run the main function
main









