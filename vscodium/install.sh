#!/bin/sh

# electron
# sudo apt-get install build-essential clang libdbus-1-dev libgtk-3-dev \
#                        libnotify-dev libasound2-dev libcap-dev \
#                        libcups2-dev libxtst-dev \
#                        libxss1 libnss3-dev gcc-multilib g++-multilib curl \
#                        gperf bison python3-dbusmock openjdk-8-jre

set -e

cd /tmp

FILENAME=codium_1.74.3.23010_amd64.deb

wget -O /tmp/$FILENAME https://github.com/VSCodium/vscodium/releases/download/1.74.3.23010/$FILENAME
wget -O /tmp/$FILENAME.sha256 https://github.com/VSCodium/vscodium/releases/download/1.74.3.23010/$FILENAME.sha256

sha256sum /tmp/$FILENAME > /tmp/checksum
sha256sum -c /tmp/checksum

sudo dpkg -i /tmp/$FILENAME
