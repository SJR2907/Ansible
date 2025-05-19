#!/bin/bash

# Set - safe script settings
set -euo pipefail
IFS=$'\n\t'

# Function to create a new user
create_user() {
    read -p "Enter username to create: " username
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists!"
    else
        sudo useradd "$username"
        echo "User '$username' created successfully!"
        sudo passwd "$username"
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    if id "$username" &>/dev/null; then
        sudo userdel -r "$username"
        echo "User '$username' deleted successfully!"
    else
        echo "User '$username' does not exist."
    fi
}

# Function to change password
change_password() {
    read -p "Enter username to change password: " username
    if id "$username" &>/dev/null; then
        sudo passwd "$username"
        echo "Password updated successfully for '$username'!"
    else
        echo "User '$username' does not exist."
    fi
}

# Function to lock a user
lock_user() {
    read -p "Enter username to lock: " username
    if id "$username" &>/dev/null; then
        sudo usermod -L "$username"
        echo "User '$username' is locked!"
    else
        echo "User '$username' does not exist."
    fi
}

# Function to unlock a user
unlock_user() {
    read -p "Enter username to unlock: " username
    if id "$username" &>/dev/null; then
        sudo usermod -U "$username"
        echo "User '$username' is unlocked!"
    else
        echo "User '$username' does not exist."
    fi
}

# Function to list all users (non-system users)
list_users() {
    echo "Listing all users with UID >= 1000:"
    awk -F: '$3 >= 1000 && $1 != "nobody" { print $1 }' /etc/passwd
}

# Menu Function
show_menu() {
    echo "========== User Management Menu =========="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. Change Password"
    echo "4. Lock User"
    echo "5. Unlock User"
    echo "6. List Users"
    echo "7. Exit"
    echo "=========================================="
}

# Main Loop
while true; do
    show_menu
    read -p "Choose an option [1-7]: " choice
    case "$choice" in
        1) create_user ;;
        2) delete_user ;;
        3) change_password ;;
        4) lock_user ;;
        5) unlock_user ;;
        6) list_users ;;
        7) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice. Please choose between 1-7." ;;
    esac
    echo
done
