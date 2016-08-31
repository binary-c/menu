#/bin/bash
source system_sub_header.sh "Password Encryptor"

file="/home/chris/morck/files/secrets/password_salt"
salt=$(cat "$file")

echo "Specify Direction" 
echo "e)ncrypt"
echo "d)ecrypt"
echo "*)exit"
read direction 

./system_sub_header.sh "Password ($direction) encryptor"
echo "using salt from $file"
printf "Enter Text:"

if [ $direction == "e" ];then
read -rs password  #Silent
echo "*hidden*"
fi 

if [ $direction == "d" ];then
read -r password   #visible
fi

result=$(../scripts/encrypt/encrypt.sh $direction $password $salt)
echo "Result: $result"
./system_sub_pause.sh

