#!/bin/bash

output=$HOME/research2/sys_info.txt

mkdir research2

echo "Module6" > ~/my_scripts/research2/sys_info.txt
date >> ~/my_scripts/research2/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/my_scripts/research2/sys_info.txt
echo -e "IPv6 Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/my_scripts/research2/sys_info.txt
echo -e "IPv4 Info: $(ip addr | head -9 | tail -1) \n" >> ~/my_scripts/research2/sys_info.txt
echo -e "Hostname: $(hostname -s) \n " >> ~/my_scripts/research2/sys_info.txt
echo -e "777 files /n" >> ~/my_scripts/research2/sys_info.txt
find / -type f -perm 777 >> ~/my_scripts/research2/sys_info.txt
echo " " >> ~/my_scripts/research2/sys_info.txt
echo "=====" >> ~/my_scripts/research2/sys_info.txt
echo -e "Top 10 /n" >> ~/my_scripts/research2/sys_info.txt
ps aux | head -11 >> /my_scripts/research2/sys_info.txt


#print permissions for each file in list
paths=('/etc/shadow' '/etc/passwd')

for x in ${paths[@]}
do
     ls -l $x >> $output 
done


#Check sudo abilities of each user that has a home folder
for sudos in $(ls /home)
do
     sudo -IU sudos
done



