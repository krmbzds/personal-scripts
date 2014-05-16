# Some housekeeping

sudo /usr/bin/maintenance
sudo apt-get dist-upgrade


# Add xorg-edgers PPA

sudo apt-add-repository ppa:xorg-edgers/ppa


# Re-synchronize package index files

sudo apt-get update


# Create xconfig file

sudo nvidia-xconfig


# For a dramatic 2D graphics performance increase in pixmap-intensive
# applications, e.g. Firefox, set the InitialPixmapPlacement parameter to 2: 
# Credit: ArchWiki (Thanks!)

sudo nvidia-settings -a InitialPixmapPlacement=2


# Maybe we could restart the computer?
# Giving you a minute to realize the fact

sudo shutdown -r +1

