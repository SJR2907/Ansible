check the numbers odd or even:
#!/bin/bash 
read -p "Enter a number:" num
if (( num % 2 == 0 ));
then
  echo "$num is even"
else
  echo "$num is odd"
fi

check the positive or negative numbers in shell script:
#!/bin/bash 
read -p "Enter a number:" num 
if (( num > 0 ));
then
 echo "$num is positive"
elif ((num < 0 ));
then 
  echo "$num is negative"
else
 echo "Number is zero"
fi

Logical operators:
and && or || not !
and both conditions are true if one condition will be failed statement not exectued.
or one condition are ture 
not ! file has available or not 

And shell script
syntax: Logical operator And if [[ $a -gt $b && name == "SJR" ]]; then 
#!/bin/bash 
read -p "Enter a value:" a
read -p "Enter b value:" b 
name=SJR
if [[ $a -gt $b && name == "SJR" ]];
then
  echo " first and second condition should be true"
else 
  echo "string and first condition should not be true"
fi

or operation:
#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
name=SJR
if [[ $a -eq $b || $name == SJR ]];
then
  echo "both conditions are true"
else
  echo "both conditions are not true"
fi

Not operation(!) :
[root@client ~]# cat not.sh
#!/bin/bash
name=welcome.sh
if [ ! -f $name ];
then
  echo "file will not be available: $name"
else
  echo "file will be vailable: $name"
fi

find the postive and negative numbers shell script 

[root@client ~]# cat negative.sh
#!/bin/bash
read -p "Enter number": num
if (( num > 0 ));
then
 echo "$num is postive"
elif (( num < 0));
then
  echo "$num is negative"
else
  echo "both numbers are positive"
fi

for loop:
syntax: for variable in list 
        do 
          statement 
        done

what is meant by ping 
# ping -c 5 google.com > /dev/null 2>&1 
> /dev/null: hide the output 
2>: redirect standard output
&1: redirect standard error 

ping -c 1 google.com > /dev/null 2>&1	See nothing (everything hidden)
ping -c 1 google.com	See full output and errors
ping -c 1 google.com 2>&1 >/dev/null	See only errors
ping -c 1 google.com > /dev/null 2> error.log	Output hidden, errors in error.log
ping -c 1 google.com &> output.log	Both stdout and stderr in output.log

exit 0	Exit script successfully
exit 1	Exit with error
sleep 5	Pause for 5 seconds
sleep 1m	Pause for 1 minute

################################################
Ansible Adhoc commands:
################################################
syntax: ansible <host-pattern> -m <module> -a "<arguments>"
1. ping all hosts
#ansible all -m ping

 2. Run Shell Command
# ansible webservers -m shell -a "uptime"
# ansible dbservers -m shell -a "df -h"

How to make a directory

# Step 1: Create directory
ansible all -m file -a "path=/opt/myapp/logs state=directory mode=0755" --become

# Step 2: Copy file
ansible all -m copy -a "src=/home/user/app.conf dest=/opt/myapp/app.conf" --become


3. Copy a File to Remote Hosts
# ansible all -m copy -a "src=/home/jai/index.html dest=/var/www/html/index.html" --become

4. Create a New User
# ansible all -m user -a "name=devuser state=present" --become

5.  Set File Permissions

# ansible all -m file -a "path=/var/www/html/index.html mode=0644" --become

6.  Check Disk Usage

# ansible all -m shell -a "df -h"

7. Reboot all hosts

# ansible all -m reboot --become

8. Gather System Facts

# ansible all -m setup

⚙️ Common Flags
--become: Run as root (sudo)

-i inventory.ini: Use a specific inventory file

-l hostname: Limit to specific host(s)

How to install webserver?
✅ Step-by-Step Ad-Hoc Commands for httpd
🔹 1. Install httpd package
ansible all -m yum -a "name=httpd state=present" --become
🔹 2. Start the httpd service
ansible all -m service -a "name=httpd state=started" --become
🔹 3. Enable httpd to start on boot
ansible all -m service -a "name=httpd enabled=yes" --become
🔹 4. Check the service status (optional)
ansible all -m shell -a "systemctl status httpd" --become

How to login without password 
visudo 
## Allow root to run any commands anywhere
root    ALL=(ALL)       ALL
jai     ALL=(ALL)         NOPASSWD:ALL
ansible ALL=(ALL)       NOPASSWD:ALL

✅ Option 1: Using copy module with content (Best Practice)
ansible all -m copy -a "dest=/var/www/html/index.html content='<h1>Welcome to Linux SME</h1>'" --become
This creates the file index.html with the given HTML content.

The file will be overwritten if it already exists.

✅ Option 2: Using shell or command (for appending or complex cases)
🔹 Write content using echo (overwrite):
ansible all -m shell -a "echo '<h1>Hello from Ansible</h1>' > /var/www/html/index.html" --become
🔹 Append content:
ansible all -m shell -a "echo '<p>Another line</p>' >> /var/www/html/index.html" --become
📝 Tips
Make sure the target directory (/var/www/html) exists before writing. Create it if needed:

ansible all -m file -a "path=/var/www/html state=directory mode=0755" --become

9. Fetch a file from remote to local

ansible all -m fetch -a "src=/var/log/messages dest=~/logs/ flat=yes"


How to install Ansible in Rhel 9.5 version:

step1: ansible-core package installed or not ?
# rpm -qa ansible-core 

step2: dnf install ansible-core 
step3: ansible --version 
[ansible@server ~]$ ansible --version
ansible [core 2.16.14]
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/ansible/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3.11/site-packages/ansible
  ansible collection location = /home/ansible/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible
  python version = 3.11.9 (main, Apr  2 2025, 00:00:00) [GCC 11.5.0 20240719 (Red Hat 11.5.0-5)] (/usr/bin/python3.11)
  jinja version = 3.1.6
  libyaml = True

There are two types of inventory 
1.Static inventory -> to edit /etc/ansible/ hosts mentioned client hostnames 
# Ex 2: A collection of hosts belonging to the 'webservers' group:

[webservers]
#jai.ram.com
client.redhat.com

2. Dynamic inventory 




