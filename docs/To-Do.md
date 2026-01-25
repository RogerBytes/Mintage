# A faire

## Prioritaire

### mettre à jour le theme de JD2 avec theme 2025 de jdownloader.tar.gz

Fait, reste à verif sur nouvelle installation

### virer des scripts tampermonkey

- Ignorer Automatiquement les publicités youtube
- Youtube Multi Downloader

### Extensions

faire parti floorp de zero


faire 3 profils
1 complets et deux en plus (pro et test)

### Boutyon extension dans floorp

a refaire egalement, en se basant sur "Lancer des scripts depuis firefox.md" dans fichiuers annexes, les scripts sont déjà crééq à l'installation de mintage, il reste à créer le clone et les deux boutons

et aussi Addons Manager.md Addons Manager.md

### vérifier l'existence des .desktop

dans indirect install il faut vérifier l'existence des .desktop (toujours pour pas faire de doublon si relance)

par exemple

```bash
DESKTOP_FILE="/usr/share/applications/Java.desktop"
if [ ! -f "$DESKTOP_FILE" ]; then
sudo tee "$DESKTOP_FILE" > /dev/null <<EOT
[Desktop Entry]
Exec=/usr/lib/jvm/jre1.8.0_351/bin/javaws
Name=Java
Icon=java
Type=Application
EOT
    sudo chmod +x "$DESKTOP_FILE"
fi
```

### corriger doublons dans zshrc

.zshrc, les echo "source ..." doublonnent si le script est relancé, il faut vérifier avec grep dans divers.sh

### verifier qu'un script existe avant de l'executer

Dans theme-fin, il fa ut vérifier que les scripts dans bin existe avant de les generer

### Reglage de nemo (doit être ok)

Dans edition/êreferences/mode d'affichage/cocher "Afficher les développeurs de dossiers" (c'(est en bas)=
refaire l'export

### tester floorp

tester floorp
installer l'extension dans floorp
https://extensions.jdownloader.org/firefox.xpi
enfin à valider, je dois tester ce truc avabt

## Secondaire

Faire une compilation statique de yad (interface graphique pour bash)
Faire une interface graphique propre


## Todo

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

1. Il faut aussi dans applications préférées floorp et Rhythmbox
2. Faire un script de customisation pour une nouvelle session.
3. 
4. Faire une application simple pour changer de runtime Java.

</details>








