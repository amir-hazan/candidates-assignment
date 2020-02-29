#!/bin/bash
#add fix to exercise4-server2 here

#ADD SERVER1 HOST-NAME & IP TO SERVER2 HOSTS FILE
echo "192.168.100.10 server1" | sudo tee -a /etc/hosts >> /dev/null