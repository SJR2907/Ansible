echo "welcome to shell script" 
date
cal

step 2: Provide execute permissions to the script 
# chmod +x welcome.sh 
step 3: Run the script 
# we can run the script in multiple ways 
  /bin/bash ./welcome.sh 
  bash ./welcome.sh 
  /bin/bash ./welcome.sh 
  ./welcome.sh # default shell is bash 

  Note:The default shell is bash Hence bash is responsible to execute our script. instead of bash if we want to use bourne shell then we have to use the following command.
  /bin/sh ./welcome.sh 
  sh ./welcome.sh
  
  Importance of She-bang:
  By using she-bang we can specifiy the interpreter which is responsible to execute the script. 
  # -> Sharp
  ! -> Bang 
  #! -> sharp bang or shabang or shebang 

  #!/bin/bash -> it means the script should be executed by bash 
  #!/bin/sh -> it means the script should be executed by bourne shell 
  #!/usr/bin/python3 -> it means the script should be executed by python3 interpreter. 

  if we write shabang in our script at the time of execution, we are not required to provide command to execute and we can execute script directly. 
  
