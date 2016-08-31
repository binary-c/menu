#/bin/bash

source system_sub_header.sh 'iptables port opener'

read -p 'Port Number:' -e -i "" portnum
sudo iptables -A INPUT -i eth0 -p tcp -m tcp --dport $portnum -j ACCEPT
echo "port $portnum opened"
source system_sub_pause.sh
