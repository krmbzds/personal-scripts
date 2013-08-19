# Creating an easy to run update script

sudo touch /usr/bin/maintenance

echo "sudo apt-get -y update"     | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get -y upgrade"    | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get -y autoclean"  | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get -y autoremove" | sudo tee -a /usr/bin/maintenance

sudo chmod +x /usr/bin/maintenance


# And running it!

sudo /usr/bin/maintenance


