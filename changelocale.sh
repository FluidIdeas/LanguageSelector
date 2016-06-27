#!/usr/bin/env bash

cat > /etc/locale.conf <<EOF
LANG=$1
EOF

sudo killall lightdm