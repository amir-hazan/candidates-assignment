#!/bin/bash
#add fix to exercise1 here

#DELETE BLOCKING ROUTE FROM ROUTING TABLE
sudo route del -net 208.86.224.90 gw 0.0.0.0 netmask 255.255.255.255 dev eth0
