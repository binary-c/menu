#/bin/bash
source system_sub_header.sh 'Delete Sub Menu'
read -p 'Main Name:'  MAIN

if [ -f ${MAIN}_menu.sh ];
then
	read -p "Sub Name:" SUB
		if [ -f ${MAIN}_sub_${SUB}.sh ];
		then
			echo "deleting ${MAIN}_sub_${SUB}.sh"
			rm -f ${MAIN}_sub_${SUB}.sh
		else
			echo "can not delete ${MAIN}_sub_${SUB}.sh because does not exist"
		fi
else
	echo "${MAIN} does not exist"
fi

source system_sub_pause.sh
