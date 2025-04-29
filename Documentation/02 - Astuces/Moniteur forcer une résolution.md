# Forcer une résolution

## Dépendances

```bash
sudo nala install -y xcvt
```

## Ajouter une résolution

Afficher les moniteurs avec

```bash
xrandr --listactivemonitors
```

Ca retourne chez moi :

```bash
Monitors: 1
 0: +*eDP-1-1 1366/344x768/194+0+0  eDP-1-1
```

Mon écran c'est `eDP-1-1`

Ensuite pour tester du 1920*1080

```bash
cvt 1920 1080
```

Ca retourne chez moi :

```bash
# 1920x1080 59.96 Hz (CVT 2.07M9) hsync: 67.16 kHz; pclk: 173.00 MHz
Modeline "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
```

On copie ce se trouve derrière `Modeline`
`"1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync`
Et on le colle derrière `xrandr --newmode` pour créer cette commande :

```bash
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
```

Ensuite pour l'ajouter aux menu d'affichage

```bash
xrandr --addmode eDP-1-1 "1920x1080_60.00"
```

Remplacez `eDP-1-1` par le nom de votre écran.

## Créer un script pour rendre le changement permanent

En une commande

```bash
echo -e 'xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync\nxrandr --addmode eDP-1-1 "1920x1080_60.00"' | sudo tee /etc/profile.d/external_monitor_resol.sh > /dev/null && sudo chmod +x /etc/profile.d/external_monitor_resol.sh
```

Et pour on l'ajoute au démarrage de session :

```bash
echo '/etc/profile.d/external_monitor_resol.sh' | sudo tee -a /etc/rc.local > /dev/null
```

## Faire toutes les étapes manuellement

On créé et édite un fichier système

```bash
sudo nano /etc/profile.d/external_monitor_resol.sh
```

et on y colle

```text
xrandr --newmode "1920x1080_60.00"  173.00  1728 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode eDP-1-1 "1920x1080_60.00"
```

`CTRL + X` pour fermez, `O` pour enregistrer, puis `Entrée`

Et pour on l'ajoute au démarrage de session :

```bash
echo '/etc/profile.d/external_monitor_resol.sh' | sudo tee -a /etc/rc.local > /dev/null
```
