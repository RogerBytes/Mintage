# A faire

## Prioritaire

### mettre à jour le theme de JD2 avec theme 2025 de jdownloader.tar.gz


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

Dans theme-fin, il fa ut vérifier que les script dans bin existe avant de les generer

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









