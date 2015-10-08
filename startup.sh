#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
        /opt/openhab/runtime/start.sh &
else
        #code that need to run only one time ....
        /opt/openhab/runtime/start.sh &
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
