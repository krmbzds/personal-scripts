# Creating an easy to run update script

FILE="/usr/bin/maintenance"

sudo touch $FILE

echo "sudo apt-get -y update"     | sudo tee -a $FILE
echo "sudo apt-get -y upgrade"    | sudo tee -a $FILE
echo "sudo apt-get -y autoclean"  | sudo tee -a $FILE
echo "sudo apt-get -y autoremove" | sudo tee -a $FILE

sudo chmod +x $FILE


# And running it!

sudo $FILE
