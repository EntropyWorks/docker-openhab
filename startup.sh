#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
        /opt/openhab/start.sh &
        /etc/init.d/mosquitto start &
else
        #code that need to run only one time ....
        /opt/openhab/start.sh &
        /etc/init.d/mosquitto start &
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
