#!/bin/bash
#add fix to exercise6-fix here

#SET VAR'S FOR USER, IP, PATH & DESTINATION
export myuser=$(whoami)
export server_ip=$(ifconfig | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' | awk 'FNR==2 {print}')
export file_path=$(echo $@ | awk '{$NF=""}1')
export file_dest=$(echo $@ | awk '{print $NF}')

#CALC FILES BYES
ls -la $file_path | awk '{total += $5} END {print total}'

#CHECK HOST
if [ "$server_ip" == "192.168.100.10" ]; then
    export server_dest="192.168.100.11"
    #echo "Files will be copied from" $HOSTNAME
     else 
    export server_dest="192.168.100.10"
    #echo "Files will be copied from" $HOSTNAME
fi

#COPY FILES
for i in $file_path; do
    scp $i $myuser@$server_dest:/$file_dest > /dev/null
    #echo "Copying $i from $HOSTNAME: to $server_dest $file_dest"
done