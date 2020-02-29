#!/bin/bash
#add fix to exercise3 here

#PERMISSIONS CHANGED IN DEFAULT FILE APACHE SERVER
sudo sed -i 's/deny from all/allow from all/i' /etc/apache2/sites-available/default

#RESTART APACHE SERVER
sudo service apache2 restart