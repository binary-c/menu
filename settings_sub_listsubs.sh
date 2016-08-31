#/bin/bash
source  system_sub_header.sh "List Sub Functions"
read -p 'Menu Name:' MENU
if [ -f ${MENU}_menu.sh ]
then
	ls | grep ${MENU}_sub_
else
	echo "${MENU} does not exist"
fi

source system_sub_pause.sh

