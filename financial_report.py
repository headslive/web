#!/usr/bin/env python2

from urllib import urlopen

data = urlopen("https://blockchain.info/q/getreceivedbyaddress/1M7Dgp5tkRapU4SUCZupKPVKA9EcomEKJr")
amount = (float(data.read()) / 100000000.)

usd = urlopen("https://blockchain.info/q/24hrprice")
usd = float(usd.read())

howmuchicandrink = amount / usd

while howmuchicandrink > 0:
    howmuchicandrink = howmuchicandrink - 2.5
    print("beer")
