Ca veut dire que ton système n’arrive pas à monter la racine (souvent problème de disque, de FS ou de fstab)

1. Lister les partitions visibles :

```sh
blkid
```

Noter le numéro de la partion système (au format ext4)


2. Forcer un check du système de fichiers (adapte `sdaX` selon ce que tu vois, genre `sda2`) :

```sh
fsck -fy /dev/sdaX
```

3. Quand fsck a fini de régler les erreurs, on peut redémmarer avec :

```sh
reboot -f
```
