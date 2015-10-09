#!/bin/bash
set -e

mkdir /opt/openhab
cd /opt/openhab

wget -v https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-runtime.zip
unzip openhab-2.0.0.alpha2-runtime.zip
rm README.TXT
wget -v https://bintray.com/artifact/download/openhab/bin/openhab-2.0.0.alpha2-addons.zip
unzip openhab-2.0.0.alpha2-addons.zip
rm openhab-2.0.0.alpha2-runtime.zip openhab-2.0.0.alpha2-addons.zip
