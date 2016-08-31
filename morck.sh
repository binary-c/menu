#/bin/bash
cd /home/chris/morck/menu/

main_thing()
{
  source system_sub_header.sh "Main Menu"
  source system_sub_automenu.sh
}

try_to_exit()
{
  clear
  source system_sub_header.sh "Exiting ?"
  echo "n) return"
  echo "*) cleanup and exit"
  read -p "$(tput bold)$(tput setaf 4)Selection$(tput sgr0):" REPLY
 if [ "$REPLY" == "n" ];then
  main_thing
  else
   #here would be the cleanup if we needed any
   exit 0
  fi
}

trap try_to_exit SIGINT SIGQUIT


while :
do
 main_thing
done
