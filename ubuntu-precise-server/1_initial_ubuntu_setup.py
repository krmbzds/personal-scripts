''' Initial Server Setup with Ubuntu 12.04 '''

from random_mysql_pass import password_generator

ipaddr = input("ipaddr: ")
username = input("username: ")
ssh_port = input("ssh_port: ")
root_pass = password_generator()
user_pass = password_generator()

output = """
# root login
ssh root@{ipaddr}

# change password
passwd

adduser {username}

visudo

# User privilege specification
# root    ALL=(ALL:ALL) ALL
# Under there, add the following line, granting all the permissions to your new user:
{username}    ALL=(ALL:ALL) ALL


# change port number (1025 - 65536) and disable root login
nano /etc/ssh/sshd_config

Port {ssh_port}
Protocol 2
PermitRootLogin no

# append to /etc/ssh/sshd_config
UseDNS no
AllowUsers {username}

# reload ssh for settings to take effect
reload ssh

# new ssh login style
ssh -p {ssh_port} {username}@{ipaddr}

"""

record = """
|1|
####
## ipaddr: {ipaddr}
## username: {username}
## ssh_port: {ssh_port}
####
## ssh -p {ssh_port} {username}@{ipaddr}
####
## root_pass: {root_pass}
## {username}_pass: {user_pass}
####
"""

print(output.format(ipaddr=ipaddr, username=username, ssh_port=ssh_port))
print(record.format(ipaddr=ipaddr, username=username, ssh_port=ssh_port,
      root_pass=root_pass, user_pass=user_pass))
