#/bin/bash
source system_sub_header.sh  'Edit Menu'

read -p 'Menu Name:' MENU

if [ -f ${MENU}_menu.sh ]
then
vim ${MENU}_menu.sh
else
echo "can not edit ${MENU}_menu.sh because it does not exit"
fi

source system_sub_pause.sh 
