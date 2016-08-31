#/bin/bash
MAIN=$1
#SUBS_AVAILABLE=$(ls | grep ${MAIN}_sub_ | awk -F "." '{print $1}'| awk -f "." '{print $1}')
SUBS_AVAILABLE=$(ls | grep ${MAIN}_sub | sed -e "s/^${MAIN}_sub_//" | sed s/\.[^\.]*$//)

PS3="$(tput bold)$(tput setaf 4)Selection$(tput sgr0)$(tput setaf 7)[ * to exit]:$(tput sgr0)"  

#PS3="Selection [any other key to exit]: "
select sub in $SUBS_AVAILABLE; do
  if [ -n "$sub" ]; then
	source ${MAIN}_sub_${sub}.sh
  fi
 break
done
