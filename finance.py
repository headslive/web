#!/usr/bin/env python3
# Keeps count of my beers.

from os.path import join
from urllib.request import urlopen


addresses = [
    '1M7Dgp5tkRapU4SUCZupKPVKA9EcomEKJr',
]

api = 'https://blockchain.info/q'

total = 0

print(' * generating financial report')
for i in addresses:
    curr = urlopen(join(api, 'getreceivedbyaddress', i))
    total += (float(curr.read()) / 100000000.)

usd = float(urlopen(join(api, '24hrprice')).read())

icandrink = total * usd

cnt = 0
beers = []
while icandrink > 0:
    icandrink -= 2.5
    beers.append('<img src="static/beer11.png" alt="a cold beer">')
    cnt += 1
    if cnt == 20:
        beers.append('<br>')
        cnt = 0

page = "<h2>heads' financial report</h2>\n"
page += '\n'.join(beers) + '\n'

with open('finance.html', 'w') as f:
    f.write(page)
