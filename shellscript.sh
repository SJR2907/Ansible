what is shell?
shell is responsible to read commands/applications provided by user.
shell will check whether command is valid or not and whether it is properly used or not. if everything is proper then shell interpretes converts that command into kernel.
understandle form that interpreted command will be handover to kernel 
kernel is responsible to execute that command with the help of hardware. (cpu, ram, processor, hardisk)
shell acts as interface between user and kernel.
shell+kernel is nothing but operating system 

Types of Shells:

There are multiple types of shells are available.
1)Bourne shell:
It is developed by stephen bourne
This is the first shell which is developed for unix flavors (solaris)
By using sh command we can access this shell.
2) Bash shell:
Bash -> Bourne shell 
it is advanced version of bourne shell 
This is the default shell for most of the linux flavours 
3) korn shell: 
it is developed by David korn 
Mostly this shell used in IBM Aix operating system 
By using ksh command we can access this shell 
4) T shell: 
T means Terminal 
it is advanced version of cshell:
This is most commonly used shell in Hp unix 
by using tcsh command we can access this shell 

5)Cshell:
Developed by Bill joy 
c meant for california university
it is also by default available with unix 
by using csh command we can access this shell 

6) Zshell:
 developed by Paul 
 By using zsh command we can access this shell 

 Note: The most commonly used shell in linux environment is BASH. It is more powerful than remaining shells.

 How to check default shell in our system. 
 # echo $0 
   -bash 
 # echo $SHELL 
   /bin/bash 
we can also check the default shell information inside /etc/passwd file  

 cat /etc/passwd 
 [root@client ~]# cat /etc/passwd | grep -i tempuser
tempuser:x:1013:1013::/home/tempuser:/bin/bash

How to check all available shells in our system 
/etc/shells file contains all available shells information  

# cat /etc/shells 
 # /etc/shells: valid login shells 
 [tempuser@client ~]$ cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash

How to switch to other shells?
Based on our requirement we can switch form one shell to another shell.

what is shell script?

A sequence of commands saved to a file and this file is nothing but shell script. 
Inside shell script, we can also use programming features like conditional statements, loops, functions etc.
Hence we can write scripts very easily for complex requrirements also  
Best suitable for automation tasks. 

