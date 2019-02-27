#!/bin/bash
# usmartnodeprivkey.sh
cd && cd .smartcash
# Get a new privatekey by going to console >> debug and typing smartnode genkey
printf "SmartNode GenKey: "
read _nodePrivateKey
sed -i "s/^\(smartnodeprivkey\s*=\s*\).*\$/\1$_nodePrivateKey/"  smartcash.conf
