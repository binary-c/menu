#/bin/bash
suffix="_menu.sh"
MENUS_AVAILABLE=$(ls |
grep _menu.sh|
grep -v "template_menu.sh" |
grep -v "main_menu.sh" |
grep -v "system_menu.sh"|
awk -F "_menu." '{print $1}')

PS3="$(tput bold)$(tput setaf 4)Selection$(tput sgr0):"
 
select menu in $MENUS_AVAILABLE; do
  if [ -n "$menu" ]; then
   source ${menu}_menu.sh
  fi
break
done
return $1   #return PID of last process ran
