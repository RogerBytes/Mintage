#!/bin/sh

#3/ Theme et optimisations
#    3/ a) Réglages d'applications'
#    3/ b) Applications au démarrage



# ----------------------------------------------------------------------------



# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------


# 3/ a) Réglages d'applications
# -----------------------------


# autostart, ferdium, fontbase; freetube, menu panel, nemo, plank, stacer, synapse, transmission, reglages extensions & desklet & applet, applications préférées
cp -a ./DATA/config-cache/* ~/.config

# Cacher le dossier de freeoffice en copiant le .hidden
cp ./DATA/Reglages/Hidden/.hidden ~/

# Police pour le terminal
sudo cp -a ./DATA/font-terminal/* /usr/share/fonts/

# theme grub
sudo cp ./DATA/calmgrub.tar.gz /root/

# Copie de Fonds d'écrans'
sudo cp -r ./DATA/Reglages/Wallpapers /usr/share/backgrounds/
sudo cp ./DATA/Reglages/linuxmint/sele_ring.jpg /usr/share/backgrounds/linuxmint
sudo cp ./DATA/Reglages/linuxmint/default_background.jpg /usr/share/backgrounds/linuxmint
cp -r ./DATA/Reglages/Wallpapers ~/Images/


# Changer l'icone de menu
sudo cp ./DATA/linuxmint-logo-ring-symbolic.svg /usr/share/icons/hicolor/scalable/apps/
sudo cp ./DATA/cinnamon-symbolic.svg /usr/share/icons/hicolor/scalable/apps/

# Copier le réglage de JD2
cp ./DATA/JD2-Dark-Theme.jd2backup ~/Téléchargements/

# Récupérer le panel et régler les icones / themes menu
dconf load /org/cinnamon/ < ./DATA/Reglages/panel.conf
#pour le sauvegarder
#dconf dump /org/cinnamon/ > ./DATA/Reglages/panel.conf

# lien variable manquant pour tilix
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh


# regler nemo plank, wallpaper et tilix
dconf load /org/nemo/ < ./DATA/Reglages/nemo.dconf
dconf load /net/launchpad/plank/ < ./DATA/Reglages/plank.dconf
dconf load /com/gexperts/Tilix/ < ./DATA/Reglages/tilix-config.dconf
dconf load /org/x/editor/ < ./DATA/Reglages/xed.dconf
dconf load /org/cinnamon/desktop/background/ < ./DATA/Reglages/wallapaper.dconf

# Modifier les curseurs bibata (prends le dessus dans certaines application et lors de la connexion) :
sudo rm -r /usr/share/icons/Bibata-Modern-Classic/cursors
sudo cp -r /usr/share/icons/capitaine-cursors/cursors /usr/share/icons/Bibata-Modern-Classic/

# 3/ b) Applications au démarrage
# -------------------------------

# ajouter au demarrag vivaldi en caché
cat > ~/.config/autostart/vivaldi-hidden.desktop << EOF
[Desktop Entry]
Type=Application
Exec=/usr/bin/vivaldi-stable --no-startup-window
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Vivaldi-silent
Name=Vivaldi-silent
Comment[en_US]=Start Vivaldi at startup
Comment=Start Vivaldi at startup
EOF

# ajouter au demarrag caffeine-indicator
cat > ~/.config/autostart/caffeine-indicator.desktop << EOF
[Desktop Entry]
Type=Application
Exec=/usr/bin/caffeine-indicator
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=caffeine-indicator
Name=caffeine-indicator
Comment[en_US]=Start caffeine at startup
Comment=Start caffeine at startup
EOF


# Optimisations

# Désactiver les effets et animations de cinammon
gsettings set org.cinnamon.desktop.interface enable-animations false

# Désactiver rotation de l'écran
gsettings set org.cinnamon.settings-daemon.peripherals.touchscreen orientation-lock true

# Les sous dossiers de téléchargements
mkdir ~/Téléchargements/Téléchargements\ navigateur/
mkdir ~/Téléchargements/Téléchargements\ torrent/
mkdir ~/Téléchargements/Téléchargements\ mail/
mkdir ~/Téléchargements/Téléchargements\ jd2/
mkdir ~/Téléchargements/Téléchargements\ ferdium/

# Theme pour le shell
cp ./DATA/.p10k.zsh ~/

# réglages de zsh
cp ./DATA/.zshrc ~/
tar -xzvf ./DATA/powerlevel10k.tar.gz -C ~/


# Passer le shell en zsh
chsh -s $(which zsh)