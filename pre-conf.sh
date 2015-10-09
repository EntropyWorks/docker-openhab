#!/bin/bash
set -e

/usr/bin/mysqld_safe &

mkdir /opt/openhab
cd /opt/openhab
curl -o /opt/openhab/openhab.zip -SL "https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-runtime.zip"
unzip openhab.zip
rm README.TXT
curl -o /opt/openhab/openhabaddons.zip -SL "https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-addons.zip"
unzip openhabaddons.zip
rm openhab.zip openhabaddons.zip

 mysqladmin -u root password mysqlpsswd
 mysqladmin -u root -pmysqlpsswd reload
 mysqladmin -u root -pmysqlpsswd create OpenHAB

 echo "grant select,insert,update,delete on OpenHAB.* to 'openhab'@localhost identified by 'openhabpasswd'; flush privileges; " | mysql -u root -pmysqlpsswd
 
killall mysqld
sleep 10s
