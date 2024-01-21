# apt list upgradable

Si vous faites le `apt list --upgradable` qu'il vous conseille et qu'il retourne :

```bash
❯ apt list --upgradable
En train de lister... Fait
tzdata/jammy-updates,jammy-updates 2023d-0ubuntu0.22.04 all [pouvant être mis à jour depuis : 2023c-0ubuntu0.22.04.2]
N: Il y a des versions supplémentaires 3. Veuillez utiliser l'opérande « -a » pour les voir.
```

Vu qu'il précise le paquet `tzdata` je fais

```bash
sudo apt upgrade -y tzdata
```
