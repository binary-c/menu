#!/bin/bash
./system_sub_header.sh 'Finance'

response=$(curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; print json.load(sys.stdin)['bpi']['USD']['rate']")

echo ""
echo "$(tput setaf 2) Bitcoin $(tput sgr0) $response"
for fname in aapl goog msft 
do
url="http://download.finance.yahoo.com/d/quotes.csv?s={$fname}&f=p2l1"
response=$(curl -s $url)
response=$(sed 's/,/  /g' <<<"$response")
response=$(sed 's/"//g' <<<"$response")

echo "$(tput setaf 8) $fname $(tput sgr 0) $response"
done
echo ""
./system_sub_pause.sh 
