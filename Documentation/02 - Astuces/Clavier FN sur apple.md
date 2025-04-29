
# Fn sur un clavier apple

On édite le ficher `hid_apple.conf` avec

```bash
sudo nano /etc/modprobe.d/hid_apple.conf
```

y ajouter cette ligne :
`options hid_apple fnmode=2`

`CTRL + X` pour fermez, `O` pour enregistrer, puis `Entrée`

Ensuite on teste le résultat :

```bash
sudo update-initramfs -u
```

Ensuit on teste si Fn fonctionne normalement (sinon on oublie au risque de se prendre un kernel panic) puis faire

```bash
sudo update-initramfs -u -k all
```

Puis on reboot

```bash
reboot
```
