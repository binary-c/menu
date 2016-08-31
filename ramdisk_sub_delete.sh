#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
echo "HACKS: doesnt check if disk exists before asking user to confirm delete" 

bash system_sub_header.sh "Delete Ramdisk"
echo "List of Disks" 
df -h | grep '/mnt/ramdisk'

./system_sub_hrule.sh 
read -p "File Name:" filename
echo "WARNING: All Content on $filename will be destroyed"
df -h | grep '/mnt/ramdisk' 

read -p "Type OK to Confirm:" confirm

if [ "$confirm" == "OK" ]; then
 if [ -d /mnt/ramdisk/$filename ]; then
  echo "Unmounting ramdisk requires root permission using sudo" 
  sudo umount -l /mnt/ramdisk/$filename
  rm -r /mnt/ramdisk/$filename 
  echo "Unmounted and deleted mount location /mnt/ramdisk/$filename"
 else 
  echo "Mount location /mnt/ramdisk/$filename does not exist"
 fi
  bash system_sub_pause.sh
else
 bash system_sub_pause.sh
fi
./ramdisk_menu.sh #return to ramdisk menu
