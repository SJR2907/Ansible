syntax:

for var in list 
do 
 # commands
done

 Example 1: Print Numbers 1 to 5

 for i in 1 2 3 4 5 6
 do 
  echo "Number: $i" 
  done 

Example 2: List all Files in Directory

for file in /etc/*
do 
 echo "File: $file"
done

Eg:3 Find and Alert Large Files (>100MB)

for file in /var/log/*
do 
 if [-f "$file"] && [$(du -m "$file" | cut -f1) -gt 100]; then
   echo "Large file found: $file"
fi
done 