#!/bin/bash

# maintient le sudo actif jusqu'çà la fin du script
sudo -v
while true; do sudo -v; sleep 300; done &
SUDO_KEEPALIVE_PID=$!
trap "kill $SUDO_KEEPALIVE_PID" EXIT

./scripts/divers.sh
