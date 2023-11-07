# put in /home/ubuntu/
#!/bin/bash

echo -e "\nDate & Time Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
date >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nMounted Filesystems:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
df -Th >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock IDs Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
blkid >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nDisks Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
fdisk -l >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock Storage Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
lsblk >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nVolume Groups Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
vgdisplay >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nLogical Volume Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
lvdisplay >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nMultipathing Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
multipath -ll >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nNetwork Interfaces:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
ifconfig -a >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem Memory:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
free -m >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nUptime Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
uptime >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nGRUB Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
cat /etc/grub2.cfg >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nProcesses Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
ps -elf >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nResource Utilization & Processes Details:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
top -bn 1 2>&1 1 >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
route -n >>/home//"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/"postcheck_$(date +"%d-%m-%Y").txt"
cat /etc/fstab >>/home/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1
