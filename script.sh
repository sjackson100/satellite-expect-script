#!/bin/sh


read -p "Please enter ssh/sudo password: " ssh_password
read -p "Please enter subscription-manager password: " sm_password
read -p "Please enter sudo password: " sudo_password

#ssh_password=asd
#sm_password=asd
#sudo_password=asf

hosts_file=/root/hosts.txt
#hosts_file=hosts.txt

for host in $(cat $hosts_file) ; do
        expect script.exp $host $ssh_password $sm_password $sudo_password
done