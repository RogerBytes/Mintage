# Désactiver module BT interne

Pour désactiver une carte BT interne (par exemple s'il est HS), on liste les usb pour commencer :

```bash
lsusb
```

en retour ça m'a donné :  
`Bus 001 Device 004: ID 0a5c:216c Broadcom Corp. BCM43142A0 Bluetooth Device`
-> C'est mon bt interne
Prenez note de `0a5c:216c` et des valeurs 0a5c 216c, que vous aurez à modifier après le sudo nano

Ensuite

```bash
sudo nano /etc/udev/rules.d/81-bluetooth-hci.rules
```

et copiez y :
`SUBSYSTEM=="usb", ATTRS{idVendor}=="0a5c", ATTRS{idProduct}=="216c", ATTR{authorized}="0"`

`CTRL+X` pour fermer, `O` pour confirmer puis `Entrée`
ensuite un petit reboot :

```bash
reboot
```

L'appareil redémarre et le système ne voit plus le module BT interne, plus de conflit avec le nouvel adaptateur. :)
