#!/bin/bash
set -e

mkdir /opt/openhab
cd /opt/openhab

curl -o /opt/openhab/openhab.zip -SL "https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-runtime.zip"
unzip openhab.zip
rm README.TXT
curl -o /opt/openhab/openhabaddons.zip -SL "https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-addons.zip"
unzip openhabaddons.zip
rm openhab.zip openhabaddons.zip
