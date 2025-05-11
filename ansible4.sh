✅ Scenario: Deploy a Flask Python App on Ubuntu/RHEL servers
🎯 Goals:
Install Python and dependencies

Create a directory for the app

Upload source code

Install requirements.txt

Run the app using gunicorn


---
- name: Deploy Python Flask App
  hosts: app_servers
  become: yes
  vars:
    app_dir: /opt/flask_app
    app_repo: "https://github.com/example/flask-app.git"
    app_port: 5000

  tasks:
    - name: Install required packages
      package:
        name:
          - python3
          - python3-pip
          - git
        state: present

    - name: Create application directory
      file:
        path: "{{ app_dir }}"
        state: directory
        mode: '0755'

    - name: Clone Flask app repository
      git:
        repo: "{{ app_repo }}"
        dest: "{{ app_dir }}"
        version: HEAD

    - name: Install Python dependencies
      pip:
        requirements: "{{ app_dir }}/requirements.txt"

    - name: Run the Flask app using gunicorn
      shell: |
        nohup gunicorn -w 3 -b 0.0.0.0:{{ app_port }} app:app &
      args:
        chdir: "{{ app_dir }}"
