#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
echo "HACKS: "

bash system_sub_header.sh "Run an R Script"
read -p 'ScriptName:' -e -i "./Scripts/fakedata.R" Script
R --no-save < ${Script}


