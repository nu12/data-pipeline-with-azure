import requests
import sys

y = sys.argv[1]
m = sys.argv[2]
d = sys.argv[3]
r = sys.argv[4]

for i in range(0, int(r)):
    d1 = str( int( d ) + i )
    r = requests.get("https://www.mercadobitcoin.net/api/BTC/day-summary/" + y + "/" + m + "/" + d1)
    f = open(f"data/daily{d1}.json","w")
    f.write(str(r.json()))
    f.close