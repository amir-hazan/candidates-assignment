#!/bin/bash
#add fix to exercise4-server1 here

#ADD SERVER2 HOSTNAME & IP TO SERVER1 HOSTS FILE
echo "192.168.100.11 server2" | sudo tee -a /etc/hosts >> /dev/null