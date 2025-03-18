# Impossible d'écrire sur un disque dur

Attention, si vous avez un dual boot avec windows, il faut ABSOLUMENT que vous désactiviez le fastboot sur votre session windows, sinon les autres disques ne seront jamais démontés correctement de la session windows (bravo microsoft pour cet éclair de génie).
https://www.malekal.com/desactiver-demarrage-rapide-windows-10-11/

Sinon vous pouvez tester :

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
