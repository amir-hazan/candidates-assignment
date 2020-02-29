#!/bin/bash
#add fix to exercise3 here

#PERMISSIONS HAS BEEN CHANGED IN DEFAULT FILE ON APACHE SERVER
sudo sed -i 's/deny from all/allow from all/i' /etc/apache2/sites-available/default

#APACHE SERVICE RESTART
sudo service apache2 restart