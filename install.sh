#!/bin/bash

# maintient le sudo actif jusqu'çà la fin du script
sudo -v
while true; do sudo -v; sleep 300; done &
SUDO_KEEPALIVE_PID=$!
trap "kill $SUDO_KEEPALIVE_PID" EXIT

## viens de prérequis
./scripts/divers.sh
##
./scripts/apt.sh
./scripts/indirect-install.sh
./scripts/theme.sh

## viens de after-reboot
./scripts/apt.sh
./scripts/theme-fin.sh
##
