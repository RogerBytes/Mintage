# A faire


Trouver un remplaçant à Marktext qui est trop lent au lancement
Faire une compilation statique de yad (interface graphique pour bash)
Faire une interface graphique propre

.zshrc, les echo "source ..." doublonnent si le script est relancé, il faut vérifier avec grep dans divers.sh

dans indirect install il faut vérifier l'existence des .desktop (toujours pour pas faire de doublon si relance)

par exemple

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



Dans theme-fin, il fa ut vérifier que les script dans bin existe avant de les generer


Voir s'il faut remplacer le script reset-cinnamon.sh'
par 
setsid cinnamon --replace

