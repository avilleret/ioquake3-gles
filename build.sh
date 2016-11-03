#!/bin/bash

echo "-- installing build essentials"
sudo su <<EOF
apt-get update && \
apt-get -y install \
\
build-essential \
git \
libsdl1.2-dev \

EOF

make

sudo cp build/release-linux-arm/ioquake3.arm /usr/local/bin
sudo cp run.sh /usr/local/bin/openarena

echo "-- installing openarena assets..."
sudo apt-get -y install openarena

CONFIG_DIR=~/.q3a/foobar

mkdir -p "${CONFIG_DIR}"

pushd "${CONFIG_DIR}"
for a in /usr/lib/openarena/baseoa/*.so /usr/lib/openarena/baseoa/pak0; do ln -s $a; done
for a in /usr/share/games/openarena/baseoa/*.pk3; do ln -s $a; done
popd

echo "-- adding special rule to awesome configuration"
patch ~/.config/awesome/rc.lua <awesome.patch
killall -s 1 x-session-manager

echo -e "-- DONE!!!\n\n type openarena to play"

