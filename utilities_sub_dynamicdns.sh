#/bin/bash
source system_sub_header.sh 'Route 53 Controller'

echo "1) to run check and update"
echo "2) to run force update"
echo "*) Exit without change"

read -p 'Option:' -e -i ""  option

if [[ $option -eq 1 ]]; then
 ../scripts/dynamic_dns/dynamic_dns.sh
fi

if [[ $option -eq 2 ]]; then
 ../scripts/dynamic_dns/dynamic_dns.sh -f
fi

source system_sub_pause.sh
