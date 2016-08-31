#/bin/bash
RED=$(tput setaf 1)
BLUE=$(tput setaf 2)
NORMAL=$(tput sgr0)
MSG="$1"

clear
echo ""
printf "$RED morck.net \n"
printf "$NORMAL $USER@$(hostname -f) \n"
printf "$NORMAL Process ID: $BLUE$$$NORMAL \n"
MENU=$1
source system_sub_hrule.sh
