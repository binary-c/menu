#/bin/bash
source system_sub_header.sh "Create A Menu"
read -p "Menu Name:" MENU

if [ -f ${MENU}_menu.sh ];
then
  echo "${MENU} already exists."
else

  echo "Creating file ${MENU}_menu.sh"
  cp template_menu.sh ${MENU}_menu.sh
fi

source system_sub_pause.sh 
