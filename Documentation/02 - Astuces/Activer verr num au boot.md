# Activer verr num au boot

On édite le fichier

```bash
sudo nano /etc/lightdm/lightdm.conf
```

Ajoutez la ligne suivante sous la section [Seat:*] :

```bash
greeter-setup-script=/usr/bin/numlockx on
```

`CTRL + X` et `O`, fermez et reboot

```bash
reboot
```
