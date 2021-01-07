#!/bin/bash -e
# -*- coding: utf-8 -*-
#filename            : install_raspotify.sh
#description         : Installation de Spotify Connect sur système Raspberry
#author              : David Minard
#email               : david@kardeur.io
#date                : 07/01/2021
#version             : 0.0.1
#usage               : $ sh install_raspotify.sh
#notes               : 
#license             : GPL-3.0 or any later version
#==============================================================================

curl -sL https://dtcooper.github.io/raspotify/install.sh | sh

cat <<'EOF'>> /etc/default/raspotify
DEVICE_NAME="Raspberry"
BITRATE="320"
EOF

sudo systemctl restart raspotify
