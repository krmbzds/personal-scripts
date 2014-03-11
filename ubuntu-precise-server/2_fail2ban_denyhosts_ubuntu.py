''' Protect SSH with fail2ban on Ubuntu 12.04 + DenyHosts '''

ssh_port = input("ssh_port: ")

output = """
# Use apt-get to install Fail2Ban
sudo apt-get install fail2ban

# copy the configuration file
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# configure the defaults in jail.local

'''
sudo nano /etc/fail2ban/jail.local

enabled  = true
port     = {ssh_port}
filter   = sshd
logpath  = /var/log/auth.log
maxretry = 6
'''

# restart fail2ban
sudo service fail2ban restart


# rules fail2ban puts in effect:
sudo iptables -L

# denyhosts installation
sudo apt-get install denyhosts
"""

print(output.format(ssh_port=ssh_port))