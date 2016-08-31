#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
echo "HACKS: "
clear

source system_sub_header.sh List RamdDisks
echo "Listing all Disks Mounted at /mnt/ramdisk"
df -h | grep '/mnt/ramdisk' 

./system_sub_pause.sh
./ramdisk_menu.sh  #return to ramdisk menu
