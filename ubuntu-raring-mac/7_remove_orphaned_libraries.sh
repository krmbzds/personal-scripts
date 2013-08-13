
# Install deborphan

sudo apt-get install deborphan


# Remove the orphaned packages returned by `deborphan`

sudo apt-get -y purge `deborphan`
sudo apt-get -y autoremove

