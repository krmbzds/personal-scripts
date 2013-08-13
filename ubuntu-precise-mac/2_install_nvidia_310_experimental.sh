
# Some housekeeping

sudo /usr/bin/maintenance
sudo apt-get dist-upgrade


# Install Nvidia Experimental 310 Drivers

sudo apt-get install nvidia-experimental-310
sudo depmod -a


# Fallback to un-accelerated VESA driver during boot sequence

echo "\n" 				      | sudo tee -a /etc/default/grub
echo 'GRUB_CMDLINE_LINUX_DEFAULT="nomodeset"' | sudo tee -a /etc/default/grub


# Create xconfig file

sudo nvidia-xconfig


# Delete all lines except 1-3

sed '1,3!d' /etc/X11/xorg.conf > /etc/X11/xorg.conf


# Append preconfigured options

cat <<EOF >> /etc/X11/xorg.conf

Section "ServerLayout"
    Identifier     "Layout0"
    Screen      0  "Screen0"
    InputDevice    "Keyboard0" "CoreKeyboard"
    InputDevice    "Mouse0" "CorePointer"
EndSection

Section "Files"
EndSection

Section "InputDevice"
    # generated from default
    Identifier     "Mouse0"
    Driver         "mouse"
    Option         "Protocol" "auto"
    Option         "Device" "/dev/psaux"
    Option         "Emulate3Buttons" "no"
    Option         "ZAxisMapping" "4 5"
EndSection

Section "InputDevice"
    # generated from default
    Identifier     "Keyboard0"
    Driver         "kbd"
EndSection

Section "Monitor"
    Identifier     "Monitor0"
    VendorName     "Unknown"
    ModelName      "Unknown"
    HorizSync       28.0 - 33.0
    VertRefresh     43.0 - 72.0
    Option         "DPMS"
EndSection

EOF


# For a dramatic 2D graphics performance increase in pixmap-intensive
# applications, e.g. Firefox, set the InitialPixmapPlacement parameter to 2: 
# Credit: ArchWiki (Thanks!)

sudo nvidia-settings -a InitialPixmapPlacement=2


# Maybe we could restart the computer?
# Giving you a minute to realize the fact

sudo shutdown -r +1



