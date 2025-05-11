✅ 2. Create Users with SSH Access and Sudo Privileges
🔧 Scenario: Onboard a new DevOps engineer across multiple servers.
---
- name: Add DevOps user with sudo and SSH
  hosts: all
  become: yes
  vars:
    username: devops
    pub_key: "{{ lookup('file', 'devops_id_rsa.pub') }}"
  tasks:
    - name: Create the user
      user:
        name: "{{ username }}"
        groups: wheel
        shell: /bin/bash
        state: present

    - name: Add SSH key
      authorized_key:
        user: "{{ username }}"
        key: "{{ pub_key }}"

    - name: Allow passwordless sudo
      lineinfile:
        path: /etc/sudoers
        line: "{{ username }} ALL=(ALL) NOPASSWD: ALL"
        validate: 'visudo -cf %s'
💡 Real-world: Used for infrastructure onboarding/offboarding.