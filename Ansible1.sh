✅ 1. Automated Web Server Setup (Apache/NGINX)
🔧 Scenario: Provision a web server with Apache on RHEL-based systems
---
- name: Setup Apache Web Server on RHEL
  hosts: webservers
  become: yes
  tasks:
    - name: Install Apache
      yum:
        name: httpd
        state: present

    - name: Start and enable Apache service
      service:
        name: httpd
        state: started
        enabled: yes

    - name: Create custom homepage
      copy:
        dest: /var/www/html/index.html
        content: "<h1>Welcome to RHEL Web Server</h1>"
💡 Real-world: Used to provision LAMP stacks, hosted apps, or monitoring pages.

