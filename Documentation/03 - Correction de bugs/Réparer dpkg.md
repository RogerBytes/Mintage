# Réparer dpkg

Si DPKG retourne des warnings ou des errors, ce n'est pas grave : faites ce qui suit.

```bash
sudo dpkg --configure -a
puis
sudo apt install -f

sudo apt update
sudo apt upgrade -y
sudo apt --fix-broken install
```

Puis refaire

```bash
sudo dpkg --configure -a

```

Pour vérifier que tout est rentré dans l'ordre.
-> si aucun retour le pb est réglé !

Ensuite redémarrez avec

```bash
reboot
```
