#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
echo "HACKS: List all the nasties here"

system_sub_header.sh "Create A File"
read -p "Filename:" FILENAME
nano ${FILENAME}
