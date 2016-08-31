#/bin/bash
source system_sub_header.sh "Edit a sub function"
read -p 'Menu Name:' MENU
if [ -f ${MENU}_menu.sh ];
then
	read -p 'Sub Name:' SUB
	if [ -f ${MENU}_sub_${SUB}.sh ];
	then
	vim ${MENU}_sub_${SUB}.sh
	else
	echo "can not edit ${MENU}_sub_${SUB}.sh because it does not exist"
	fi
else
	echo "${MENU}_menu.sh does not exist"
fi
source system_sub_pause.sh
