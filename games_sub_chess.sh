#/bin/bash
cd ../misc/chess/chess
clear
./system_sub_header.sh "Chess"
echo "1) human vs computer"
echo "2) human vs human"
echo "other to exit"
PS3="Option:"
read option
if [  option==1 ]
then
clear
chess
fi

if [ option==2 ]
clear
chess a
elif
exit
fi
