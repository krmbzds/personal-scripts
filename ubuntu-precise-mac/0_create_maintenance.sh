

# Creating an easy to run update script

sudo touch /usr/bin/maintenance

echo "sudo apt-get update"     | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get upgrade"    | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get autoclean"  | sudo tee -a /usr/bin/maintenance
echo "sudo apt-get autoremove" | sudo tee -a /usr/bin/maintenance

sudo chmod +x /usr/bin/maintenance

sudo /usr/bin/maintenance


