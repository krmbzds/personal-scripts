
# Remove domains that are preauthorized to access Unity Integration
# (a.k.a Amazon spyware)

sudo dconf write /com/canonical/unity/webapps/preauthorized-domains "['']"


# You can take a look at default values here:
# ['amazon.ca', 'amazon.cn', 'amazon.com', 'amazon.co.uk', 'amazon.de', 
#  'amazon.es', 'amazon.fr', 'amazon.it', 'www.amazon.ca', 'www.amazon.cn',
#  'www.amazon.com', 'www.amazon.co.uk', 'www.amazon.de', 'www.amazon.es', 
#  'www.amazon.fr', 'www.amazon.it', 'one.ubuntu.com']
