#!/bin/bash
set -e

mkdir /opt/openhab
cd /opt/openhab
curl -o /opt/openhab/openhab.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-runtime.zip"
unzip openhab.zip
curl -o /opt/openhab/openhabaddons.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-addons.zip"
unzip -o openhabaddons.zip
curl -o /opt/openhab/demo.zip -SL "https://bintray.com/artifact/download/openhab/bin/distribution-1.7.1-demo.zip"
unzip -o demo.zip
cd /opt/openhab/addons

rm /opt/openhab/openhab.zip /opt/openhab/openhab.zip /opt/openhab/addons/openhabaddons.zip
