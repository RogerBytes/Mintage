# MF Install pour lutris

### ⚙️ Étapes

1. Ouvre un terminal.

2. Place-toi dans le dossier contenant `mf-install.sh` (ici dans le répertoire `mf-install-lutris`).

3. Adapte le chemin du préfixe (**le dossier Wine du jeu**) et celui du runner (**le moteur Wine/Proton utilisé**).

### 🧼 Commande magique

Pour le runner par défaut

```bash
WINEPREFIX="$HOME/Games/grandia-hd-remaster" \
PROTON="$HOME/.local/share/lutris/runners/wine/wine-ge-8-26-x86_64" \
./mf-install.sh -proton
```

🟰 **ou** pour un autre runner :

```bash
WINEPREFIX="$HOME/Games/grandia-hd-remaster" \
PROTON="$HOME/.local/share/lutris/runners/wine/proton-exp-25-06-x86_64" \
./mf-install.sh -proton
```

### 🧠 Notes utiles

- Le script **modifie uniquement le préfixe**, pas le runner.

- L’option `-proton` dit juste "ce préfixe est géré par Proton/Lutris" → pas de panique.

- Vérifie le bon runner dans Lutris : clic droit sur le jeu → Configurer → Onglet **Runner**.
