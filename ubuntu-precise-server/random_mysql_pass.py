#!/usr/bin/env python3


def password_generator():
    import random
    import urllib.request

    url = ("http://www.random.org/strings/"
           "?num=1&len=8&digits=on&upperalpha=on"
           "&loweralpha=on&unique=on&format=plain&rnd=on")

    punct = list("!#$%&()*+,-.:;<=>?@[]^_{}~")

    response = urllib.request.urlopen(url)
    password = list(response.read().decode('ascii').strip("\n"))

    random.shuffle(punct)
    punct = punct[:5]

    for p in punct:
        password.append(p)

    random.shuffle(password)

    password = "".join(str(x) for x in password)

    return(password)
