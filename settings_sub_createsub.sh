#/bin/bash
source system_sub_header.sh "Create a new sub function"
read -p "Menu Name:" MENU

if [ -f ${MENU}_menu.sh ];
then
	read -p "Sub Name:"  SUB
	if [ -f  ${MENU}_sub_${SUB}.sh ];
	then
		echo "${MENU}_sub_${SUB}.sh Already Exists"
	else
		echo "creating ${MENU}_sub_${SUB}.sh"
		cp template_sub_template.sh ${MENU}_sub_${SUB}.sh
	fi
else
	echo "$can not create sub because "${MENU}"_menu.sh does not exist"
fi

source system_sub_pause.sh 

