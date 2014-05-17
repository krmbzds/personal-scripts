# Add PPA

sudo add-apt-repository ppa:webupd8team/java && sudo apt-get update


# Accept Oracle License

echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections


# Install Java

sudo apt-get install oracle-java7-installer


# Set Java version 

sudo update-java-alternatives -s java-7-oracle


# Set Java environment variables

sudo apt-get install oracle-java7-set-default

