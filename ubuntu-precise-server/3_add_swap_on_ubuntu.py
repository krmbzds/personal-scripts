''' How to Add Swap on Ubuntu 12.04 '''

output = """
#Check if list is empty
swapon -s

sudo dd if=/dev/zero of=/swapfile bs=1024 count=512k

sudo mkswap /swapfile

sudo swapon /swapfile

sudo nano /etc/fstab

#Append the following line:
/swapfile       none    swap    sw      0       0 

sudo chown root:root /swapfile 

sudo chmod 0600 /swapfile
"""

print(output)
