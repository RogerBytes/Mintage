# Avoir accès écriture sur un disque



```
sudo mount -o remount,rw /mnt/DATA/
sudo chown -R $USER:$USER /mnt/DATA/
```

Il faut remplacer `/DATA/` par le bon chemin. Par exemple chez moi le chemin est `/mnt/01D5DAFD6B835D90`

Donc les commandes donnent :

```
sudo mount -o remount,rw /mnt/01D5DAFD6B835D90
sudo chown -R $USER:$USER /mnt/01D5DAFD6B835D90
```
