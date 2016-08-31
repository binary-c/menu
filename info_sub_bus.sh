#!/bin/bash
interupt=''
while [ "$interupt" = '' ];
do

#Double buffering to prevent screen flicker on update
R CMD BATCH /home/chris/morck/scripts/transit/Display.R

output=$(
./system_sub_header.sh 'Bus Schedule'
cat /home/chris/morck/scripts/transit/output/timetable.txt
)

clear
echo "$output"
read -p "$(tput bold)$(tput setaf 3) [ * ] to Exit $(tput sgr0)" -n 1 -t 30 interupt
done
