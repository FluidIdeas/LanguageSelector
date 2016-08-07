#!/usr/bin/env bash

cat > /etc/locale.conf <<EOF
LANG=$1
EOF

if [ -f /etc/profile.d/i18n.sh ]
then

cat > /etc/profile.d/i18n.sh << EOF
# Set up i18n variables
export LANG=$1
EOF

fi
sudo rm /etc/xdg/autostart/languageselector.desktop

sudo killall lightdm
