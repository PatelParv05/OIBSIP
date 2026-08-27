# UFW Basic Firewall Configuration Script

```bash
#!/bin/bash

# UFW Basic Firewall Configuration
# Use only on a system you own or are authorized to administer.

echo "Starting UFW firewall configuration..."

# Allow SSH traffic on port 22
sudo ufw allow ssh

# Deny HTTP traffic on port 80
sudo ufw deny http

# Allow HTTPS traffic on port 443
sudo ufw allow https

# Allow DNS traffic over TCP
sudo ufw allow 53/tcp

# Allow DNS traffic over UDP
sudo ufw allow 53/udp

# Enable UFW
sudo ufw --force enable

# Display the final firewall configuration
echo "Final UFW configuration:"
sudo ufw status verbose
```
