#/bin/bash

source system_sub_header.sh 'Hue Desk Light Cycler'

if [ ! -f /home/chris/morck/scripts/hue/hue_cycle_is_on.sh ]
then
 nohup /home/chris/morck/scripts/hue/hue_cycle.sh &
 echo "kill" $! > /home/chris/morck/scripts/hue/hue_cycle_is_on.sh
 echo "rm /home/chris/morck/scripts/hue/hue_cycle_is_on.sh" >> /home/chris/morck/scripts/hue/hue_cycle_is_on.sh
 echo "started light cycle"
else
 echo "Cycle Already Running k to kill c to continue running"
 read -r -sn1 t
  case $t in
        k) source /home/chris/morck/scripts/hue/hue_cycle_is_on.sh ;; 
	c) echo "leaving it on";;
    esac
fi

source system_sub_pause.sh
