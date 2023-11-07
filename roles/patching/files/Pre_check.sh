# Put the Script in /home/ubuntu/
#!/bin/bash
echo -e "\nDate & Time Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
date >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nMounted Filesystems:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
df -Th >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock IDs Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
blkid >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nDisks Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
fdisk -l >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock Storage Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
lsblk >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nVolume Groups Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
vgdisplay >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nLogical Volume Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
lvdisplay >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nMultipathing Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
multipath -ll >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nNetwork Interfaces:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
ifconfig -a >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem Memory:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
free -m >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nUptime Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
uptime >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nGRUB Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
cat /etc/grub2.cfg >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nProcesses Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
ps -elf >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nResource Utilization & Processes Details:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
top -bn 1 2>&1 1 >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
route -n >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/"precheck_$(date +"%d-%m-%Y").txt"
cat /etc/fstab >>/home/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
