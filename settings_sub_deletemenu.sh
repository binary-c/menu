#/bin/bash
source system_sub_header.sh "Create a new menu item"
echo "WARNING WILL DELETE MENU AND ALL RELATED SUBS"
read -p "Menu Name:" MENU

if [ -f ${MENU}_menu.sh ];
then
	echo "deleting ${MENU} and all related subs"
	rm ${MENU}_menu.sh
	rm -f ${MENU}_sub_*.sh
else
	echo "${MENU}_menu.sh does not exist"
fi

source system_sub_pause.sh 

