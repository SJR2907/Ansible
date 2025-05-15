How to create multiple files 
# touch f1 f2 f3
How to append the data in to existing file 
# cat >> <filename>
what types of mode in vi editor 
# insert mode   press -i
# command mode -> ESC
# execution mode -> :wq!
How to rename the file 
# mv oldname new name 
How to copy the file
# cp source file destination file 
How to replace the word in the existing file
#  sed -i s/oldword/newword/g' I for insert it will be save as permanent 
How to search a word in file 
# grep <word-name> <filename>
How to ignore the word in file 
# grep -I <wordname> <filename>
How to display the word matching pattern
# grep -v <word-name> <filename>
How to print the first column only in file 
# awk  '{print $1}' <file_name>
How to print the Number of first  records in file 
# awk NR ==1 {print $0} <file_name> 
How to separate the columns in file 
# cut -d '|' -f1 <file_name>
How to create the partition? what is the steps I give 500GB harddisk and create the volumes and mount the filesystems. 
# lsblk
To list the partition
# fdisk -l 
create the partitions 
# fdisk <device_name>
n -> for create the new partition
to give the size +500G 
w -> to save the partition 
to format the filesystem 
mkfs.<filesystem-type> <partition name>
to create the mount point 
mkdir <mountpoint name>
To mount the filesystem 
mount /dev_name> <mountpoint-name> 
How to check the filesystem usage 
df -hT 
h for human readable format 
T for filesystem type 
How to increase the filesystem 
downtime required or not ? while increasing the filesystem downtime don't need. 
to verify the space is available in existing harddisk 
lsblk 
is there any space is available in existing harddisk 
# growpart <device_name> <partition number"
update the filesystem 
# resize2fs device_name 

I want to create the user account  in Linux 
where it will be stored user information in /etc/passwd 
/etc/passwd  username: mask password: uid:gid:homedirectory:shell   
useradd Vivek -u 204 -g 204 -d /home/Vivek -s /bin/bash 
How to change the shell to user 
# usermod -s /bin/nologin 
How to add the user to group
groupadd arun
cat /etc/group 
# usermod -aG groupname username 
how to assign the passwd to user 
#passwd <username> 
How to check the user password parameters 
# chage -l <username> 
How to reset the password to username
# chage -d 0 <username> 
what are the fields in /etc/shadow 
username:encrypted password: uid: minimum number of days to change password: maximum number of days to change password: Last password change: password expired: account expire:warning days:Inactive days 
How to install the package using yum 
I want to install the webserver:
yum install httpd* -y 
How to check httpd package installed or not 
rpm -qa httpd
when installed the httpd package I want to see the information 
rpm -qa --last | grep -I httpd
How to check the httpd port listen or not 
# netstat -ant | grep -I 80 
How to check the process of httpd 
# ps -ef | grep -I httpd 
How to check the service and process in which port ? 
# netstat -tulpn | grep -I 80 
How to check the memory 
# free -m 
can you please explain filesystems are available in Linux 
/ root filesystem 
/home 
/bin
/sbin
/etcc
/proc 
/usr
/opt 
how to check the patch in present working directory 
# pwd 
can you please explain the Linux architecture 
1) user 2) applications 3)shell 4)kernel 5)hardware 
what is meant by shebang
#!
how to check the shell 
echo $SHELL
what is the default shell of Linux 
/bin/bash 
How to print the message "Hello Vivek"
echo "Hello Vivek"
How to declare the variable hello Vivek
name=Vivek
echo "hello $name!"
How to give user input 
read -p "Enter number value: " 
How to print the message 
echo "hello vivek: $variablename" 
what is the syntax of for loop 
for variable  in list 
do 
  commands 
done 
what is the syntax of if statement 
if [condition]; then
  statement
else 
  statement 
fi 
elif 
if [ condition]; then 
 statement 
elif [ condition ]; 
then 
  statement 1 
else 
  statement 2 
fi 

what are the operators available in shell script ?
Arthimetic and logical and relational operator 
Arthimetic operators: + - * division 
relational operator: gt lt ge le eq ne
logical: && || not ! 
&& -> both conditions are true if failed one condition all statements will be failed 
|| -> one condition are true is enough remaing conditions also will be true 
 


