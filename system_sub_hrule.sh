#/bin/bash
CYAN=$(tput setaf 12)
NORMAL=$(tput sgr0)

NORMAL=$(tput sgr0)
WIDTH=`tput cols`
c_width=$(( ($WIDTH + ${#MENU}) / 2 ))

printf "$CYAN"
printf "%${c_width}.${c_width}s\n" "$MENU"
printf "$NORMAL"
printf '%*s\n' "${WIDTH}" '' | tr ' ' _
