#/bin/bash
echo "NAME:Static report server"
echo "FUNCTION: Take (a) and puts it in location (b)"
echo "VERSION:0"
echo "HACKS:"

bash system_sub_header.sh "Move a file"
read -p 'File:' -e -i "./DB/info.txt" file
read -p 'Location:' -e -i "/var/www/files/" location
echo $file
echo $location

mv $file $location
