# Get latest PyCharm URL

PYCHARM_URL=`python <<END
import re
import urllib2
h = urllib2.urlopen("http://www.jetbrains.com/js2/version.js").read()
v_finder = re.compile('var versionPyCharmLong = "(?P<version>[\d\.]+)";', re.M)
m = v_finder.finditer(h)
for x in m: v = x.group("version")
print "http://download.jetbrains.com/python/pycharm-community-%(v)s.tar.gz" % locals()
END`

# Courtesy of Cristoph Korn (github.com/ckorn)
# The code snippet above is a modified version of the script linked below:
# https://github.com/ckorn/Upstream-watchers/blob/master/pycharm.py


# Create PyCharm folder

sudo mkdir -p /opt/PyCharm


# Download latest PyCharm archive

sudo wget $PYCHARM_URL


# Extract archive to folder

sudo tar -zxvf pycharm-community-?.?.?.tar.gz --strip-components 1 -C /opt/PyCharm


# Remove leftovers

sudo rm -f pycharm-community-?.?.?.tar.gz


# Start PyCharm for initial setup

sudo /opt/PyCharm/bin/pycharm.sh

