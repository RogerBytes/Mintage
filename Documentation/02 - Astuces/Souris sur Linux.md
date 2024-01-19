# Souris sur Linux

Pour les souris il y a deux utilitaires principaux :

- [ckb-next](https://github.com/ckb-next/ckb-next) pour les souris de la marque Corsair
- [Piper](https://github.com/libratbag/piper) pour toutes autres marque de souris

## Installer ckb-next

### Dépendances

On installe les lib requises avec

```bash
sudo nala install -y build-essential cmake libudev-dev qtbase5-dev zlib1g-dev libpulse-dev libquazip5-dev libqt5x11extras5-dev libxcb-screensaver0-dev libxcb-ewmh-dev libxcb1-dev qttools5-dev git libdbusmenu-qt5-dev
```

### Compilation

On le compile et on l'installe avec

```bash
git clone https://github.com/ckb-next/ckb-next.git
cd ckb-next
./quickinstall
cd
sudo rm -r ckb-next
```

Voilà il est installé.

### Utilisation

Pour passer en mode expérimental (ajout des derniers modèles non testés), l'on utilise

```bash
sudo systemctl stop ckb-next-daemon ; sudo ckb-next-daemon --enable-experimental
```

Faire `CTRL + C` pour arrêter le processus du terminal.

Pour relancer ckb normalement, on utilise

```bash
sudo systemctl start ckb-next-daemon
```

## Installer Piper

Pour l'installer Piper, l'on utilise

```bash
sudo nala install -y piper
```
