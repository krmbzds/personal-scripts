''' How to Install OpenVPN Access Server on Ubuntu 12.04 '''

from random_mysql_pass import password_generator
password = password_generator()

ubuntu_version = input("Ubuntu version [10, 12, 13]: ")
architecture   = input("Architecture [32, 64]: ")
ovpn_version   = input("OpenVPN Access Server Version [2.0.3]: ")
ip_address     = input("IP Address of Cloud Server: ")

if len(ovpn_version) == 0: ovpn_version = '2.0.3' 

arch_suffix = {'32':'.i386.deb', '64':'.amd_64.deb'}
pfix_url = 'http://swupdate.openvpn.org/as/'
filename = 'openvpn-as-' + ovpn_version + '-Ubuntu' + ubuntu_version + arch_suffix[architecture]
full_url = pfix_url + filename

output = """

# Login as root
sudo su

# Fetch package
sudo wget {full_url}

# Install
dpkg -i "{filename}"

# Change Pass of 'openvpn' User
sudo passwd openvpn

|OpenVPN|
#########
## username: openvpn
## password: {password}
#####
## Admin  UI: https://{ip_address}:943/admin
## Client UI: https://{ip_address}:943/
#########

"""

print(output.format(full_url=full_url, filename=filename, password=password, ip_address=ip_address))

# I've got 99 problems but a proxy ain't one
