#!/bin/bash

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root or use sudo."
   exit 1
fi

# Update system
echo "Updating system..."
yum update -y

# Install httpd
echo "Installing httpd..."
yum install -y httpd

# Enable and start the service
echo "Starting and enabling httpd service..."
systemctl enable httpd
systemctl start httpd

# Confirm status
echo "Apache HTTP Server status:"
systemctl status httpd