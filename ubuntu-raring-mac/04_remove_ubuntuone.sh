
# Kill processes

sudo killall ubuntuone-login ubuntuone-preferences ubuntuone-syncdaemon


# Remove related packages

sudo apt-get -y purge ubuntuone-client python-ubuntuone-storage*


# Commit genocide

sudo rm -rf ~/.local/share/ubuntuone
sudo rm -rf ~/.cache/ubuntuone
sudo rm -rf ~/.config/ubuntuone
sudo rm -rf ~/Ubuntu\ One

