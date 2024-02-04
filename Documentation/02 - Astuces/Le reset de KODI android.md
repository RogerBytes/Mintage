# Pistes de workarounds

Quand les paramètres de skin etc sont reset il s'agit en fait d'un wipe de `guisettings.xml`, cela se produit souvent lorsque Kodi crash alors qu'il était en train d'y mettre des informations (il met régulièrement des informations horaires par exemple). La solution à ça se serait un script qui recopie le fichier `guisettings.xml` à chaque démmarage d'android.

Le chemin est

```bash
/storage/emulated/0/Android/data/org.xbmc.kodi/files/.kodi/userdata/guisettings.xml
```

## Todo faire un script pour charger le gui guisettings.xml dans kodi

Avec termux boot, il serait possible de recharger le fichier à chaque fois, il faudrait aussi un autre script pour faire dans l'autre sens, afin de sauver les changements qui ne résultent pas d'un crash de kodi.
