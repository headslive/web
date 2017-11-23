#!/usr/bin/env python3
# Keeps count of my beers.
# See LICENSE file for copyright and license details.

from os.path import join
from time import gmtime, strftime
from urllib.request import urlopen


addresses = [
    '1M7Dgp5tkRapU4SUCZupKPVKA9EcomEKJr',
    '1Ho3MCkBBFqaaDLAquz8knKHxPeFJVezzY',
]

api = 'https://blockchain.info/q'

total = 0

print(' * generating financial report')
for i in addresses:
    curr = urlopen(join(api, 'getreceivedbyaddress', i))
    total += (float(curr.read()) / 100000000.)

usd = float(urlopen(join(api, '24hrprice')).read())

icandrink = total * usd

cnt, tot = 0, 0
beers = []
while icandrink > 0:
    icandrink -= 2.5
    beers.append('<img src="static/beer11.png" alt="a cold beer" width="24">')
    cnt += 1
    tot += 1
    if cnt == 20:
        beers.append('<br>')
        cnt = 0

page = "<h2>heads' financial report</h2>\n"
page += '<h4>%s</h4>\n' % strftime('%a, %d %b %Y %H:%M:%S %z', gmtime())
page += '<a href="/finance.py"><h4>generated with a script</h4></a>\n'
page += '\n'.join(beers) + '\n'
page += '<p>beer count: %d</p>\n' % tot

with open('finance.html', 'w') as f:
    f.write(page)
