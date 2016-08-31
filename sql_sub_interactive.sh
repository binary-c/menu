#/bin/bash
echo "NAME: SQL INTERACTIVE"
echo "FUNCTION: interactive sql shell"
echo "VERSION:0"
echo "HACKS: List all the nasties here"

read -p "DATABASE:" -e -i "TEST"  DATABASE
isql -v ${DATABASE}

bash system_sub_pause.sh
