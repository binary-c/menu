#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
clear

./system_sub_header.sh "Create Ramdisk"
read -e -p "Folder Name: " -i "disk1" name
read -e -p "Size (1000=1GB):" -i "5000" size 

if [ -d /mnt/ramdisk/$name ];then
echo "Warning: Disk already exists delete first"
else
mkdir /mnt/ramdisk/$name
echo "mounting disk requires root permission running sudo"
sudo mount -t tmpfs -o size="$size"m tmpfs /mnt/ramdisk/$name
echo "Created {$size}m ramdisk @ /mnt/ramdisk/$name"
fi
source system_sub_pause.sh
./ramdisk_menu.sh
