#!/bin/bash

# UFW Basic Firewall Configuration
# For authorized Linux/VM environments only

# Allow SSH
sudo ufw allow ssh

# Deny HTTP
sudo ufw deny http

# Allow HTTPS
sudo ufw allow https

# Allow DNS over TCP
sudo ufw allow 53/tcp

# Allow DNS over UDP
sudo ufw allow 53/udp

# Enable UFW
sudo ufw --force enable

# Display final firewall configuration
sudo ufw status verbose
