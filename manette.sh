#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Ce script doit être lancé avec sudo !" >&2
    exit 1
fi


NAME="8BitDo Pro 2"
MAC=""

echo "===== ÉTAPE 1 : recherche MAC ====="
while [ -z "$MAC" ]; do
    MAC=$(sudo btmgmt find 2>/dev/null \
        | awk -v name="$NAME" '
            /dev_found:/ {mac=$3}
            /name/ && $0 ~ name {print mac}
        ' | head -n1)
    [ -z "$MAC" ] && echo "Attente de la manette..." && sleep 0.01
done
echo "Manette détectée : $MAC"


echo "===== ÉTAPE 2 : remove si existante ====="
sudo bluetoothctl <<EOF
power on
remove $MAC
EOF

echo "===== ÉTAPE 3 : pair / trust / connect ====="
expect <<EOF
log_user 1
spawn bluetoothctl
expect "#"
send "power on\r"
send "agent NoInputNoOutput\r"
send "default-agent\r"
send "scan on\r"
expect {
    -re "$MAC" { send_user "Manette détectée dans bluetoothctl : $MAC\n" }
}
send "pair $MAC\r"
expect {
    -re "Pairing successful" { send_user "Pairing OK\n" }
    -re "AuthenticationFailed" { send_user "Échec du pairage\n" }
}
send "trust $MAC\r"
send "connect $MAC\r"
send "scan off\r"
send "quit\r"
expect eof
EOF

echo "===== TERMINÉ ====="






