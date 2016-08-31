#/bin/bash
echo "NAME:Sends and Email"
echo "FUNCTION:Sends email"
echo "VERSION:0"
echo "HACKS: hardcoded everything no attatchments"

system_sub_header.sh "Script Email"
read -p 'To:' -e -i "chris@morck.net"  EMAIL
read -p 'Subject:' -e -i "Test Message" SUBJECT
read -p 'Message:' -e -i "Hello" MESSAGE

mail -s "$SUBJECT" "$EMAIL" <<EOF
$MESSAGE
EOF
