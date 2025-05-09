Scenario: Archive logs older than 7 days 

#!/bin/bash 
find /var/log -name "*.log" -type f -mtime +7 -exec gzip {} \;

Scenario: Alert if a process consumes more than 80% CPU.

#!/bin/bash
ps -eo pid,comm,%cpu --sort=-%cpu | awk '$3>80 {print "High CPU process: PID="$1", CMD="$2", CPU="$3"%"}'

Scenario: Delete temporary files older than 3 days.

#!/bin/bash
find /tmp -type f -mtime +3 -exec rm -f {} \;

# Get disk usage of root partition in percentage (number only)
usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

Find Commands:
Find Large Files (e.g., > 100MB)

# find /var -type f -size +100M

2. Delete Temporary Files Older Than 7 Days

# find /tmp -type f -mtime +7 -exec rm -f {} \;

3. Find and Archive Log Files

# find /var/log -name "*.log" -mtime +3 -exec gzip {} \;
Archive old logs older than 3 days to save space.

4. Find All Files Owned by a Specific User
# find /home -user devuser

5. 5. Find Files Without Permission (777)
# find / -type f -perm 0777
Scenario: Security audit — check for insecure files with full permissions (read/write/execute for everyone).

6. Find Recently Modified Files (last 1 hour)
# find /etc -type f -mmin -60
Scenario: After a server configuration change or suspected intrusion, find files modified in the last 60 minutes.

🛠️ 7. Find Broken Symlinks
# find / -xtype l
Scenario: Maintenance — detect symbolic links pointing to non-existent files or directories.

🔧 8. Find Executable Files
# find /usr/bin -type f -executable
Scenario: Inventory of available tools or when scanning unknown scripts/binaries.

🗂️ 9. Find All Empty Files or Directories
# Find empty files
find /var/log -type f -empty

# Find empty directories
find /home -type d -empty
Scenario: Clean up or validate directory structures, detect failed file writes.

📋 10. Save List of All .conf Files into a File

# find /etc -name "*.conf" > conf_files.txt
Scenario: Create a backup index or documentation for config files before changes.

✅ Bonus: Use find with xargs (for performance)

# find /var/log -name "*.log" -type f | xargs gzip
Scenario: Compress many log files faster than using -exec one-by-one.


