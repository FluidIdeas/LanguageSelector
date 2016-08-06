#!/usr/bin/env bash

cat > /etc/locale.conf <<EOF
LANG=$1
EOF
sudo rm /etc/xdg/autostart/languageselector.desktop

sudo killall lightdm
