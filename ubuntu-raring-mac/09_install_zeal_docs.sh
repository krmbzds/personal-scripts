
# Zeal is a simple documentation browser inspired by Dash. It allows searching offline copies of various programming reference documentation sets.


# Add Zeal PPA:

sudo add-apt-repository -y ppa:jerzy-kozera/zeal-ppa


# NOTE: Zeal depends on Qt5, so Qt5 PPA must be added as well:

sudo add-apt-repository -y ppa:canonical-qt5-edgers/qt5-proper


# apt-get update

sudo apt-get update


# Install Zeal:

sudo apt-get -y install zeal 


# Create Unity launcher for Zeal:

cat <<EOF >> ~/.local/share/applications/Zeal.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon[en_US]=other-driver
Name[en_US]=Zeal
Exec=zeal
Name=Zeal
Icon=other-driver
EOF

