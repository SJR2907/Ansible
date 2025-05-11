✅ 3. Patch Servers and Reboot if Needed
🔧 Scenario: Apply critical patches on production RHEL servers.
---
- name: Apply patches and reboot if needed
  hosts: rhel_servers
  become: yes
  tasks:
    - name: Update all packages
      yum:
        name: '*'
        state: latest
      register: yum_output

    - name: Reboot if kernel or critical packages updated
      reboot:
        msg: "Reboot initiated after update"
        reboot_timeout: 600
      when: yum_output.changed
💡 Real-world: Used for zero-downtime, compliant patch cycles.

5. MySQL Installation & Database Creation
🔧 Scenario: Install MySQL and create a user + database.
---
- name: Install MySQL and setup database
  hosts: db_servers
  become: yes
  vars:
    db_user: myuser
    db_pass: mypass
    db_name: mydb
  tasks:
    - name: Install MySQL
      yum:
        name: mysql-server
        state: present

    - name: Start and enable MySQL
      service:
        name: mysqld
        state: started
        enabled: yes

    - name: Create MySQL user and DB
      mysql_user:
        name: "{{ db_user }}"
        password: "{{ db_pass }}"
        priv: "{{ db_name }}.*:ALL"
        host: "%"
        state: present
💡 Real-world: Initial DB provisioning or automated test environment creation.

✅ 6. Backup Logs to Central Location
🔧 Scenario: Collect application logs and send them to backup server.
---
- name: Backup logs to NFS or remote mount
  hosts: app_servers
  become: yes
  vars:
    logs_path: /var/log/myapp/
    backup_path: /mnt/backup_logs/
  tasks:
    - name: Copy logs
      synchronize:
        src: "{{ logs_path }}"
        dest: "{{ backup_path }}"
        recursive: yes
💡 Real-world: Nightly log backup automation.

✅ 7. Rolling Application Restart (Zero Downtime)
🔧 Scenario: Update app with one-server-at-a-time strategy.
---
- name: Rolling restart of web app
  hosts: webservers
  become: yes
  serial: 1
  tasks:
    - name: Pull latest code
      git:
        repo: 'https://github.com/org/webapp.git'
        dest: /var/www/webapp

    - name: Restart app service
      systemd:
        name: webapp
        state: restarted
💡 Real-world: Used in production deployments where uptime is critical.

📌 Bonus Tips
Module	Real-time Use
yum, apt	OS-level package installs and patching
copy, template	File deployment and templating
cron	Scheduled job setup
reboot	Reboot systems after changes
git, pip, systemd	CI/CD deployments
lineinfile, blockinfile	Modify config files safely
synchronize	Remote backups or NFS copies
mysql_user, postgresql_db	DB setup automation