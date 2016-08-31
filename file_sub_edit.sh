#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"

clear
system_sub_header.sh "File Editor"
ls Scripts
#HLINE BREAK FUNCTION
read -p "Filename:" -e -i "./Scripts/" filename
clear
nano ${filename}

