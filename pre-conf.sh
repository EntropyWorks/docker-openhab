#!/bin/bash
set -e

mkdir /opt/openhab
cd /opt/openhab
curl -o /opt/openhab/openhab.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-runtime.zip"
unzip openhab.zip
cd /opt/openhab/addons
curl -o /opt/openhab/addons/openhabaddons.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-addons.zip"
unzip -o openhabaddons.zip
cd /opt/openhab
curl -o /opt/openhab/demo.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-demo.zip"
unzip -o demo.zip


rm /opt/openhab/openhab.zip /opt/openhab/demo.zip /opt/openhab/addons/openhabaddons.zip
