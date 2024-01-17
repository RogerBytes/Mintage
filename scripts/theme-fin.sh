#!/bin/sh

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# Régler le thème des applications flatpak
sudo cp -r /usr/share/icons/Mint-L-Blue ~/.icons/ && sudo cp -r /usr/share/themes/Mint-L-Dark-Blue ~/.themes/
sudo flatpak override --filesystem=~/.icons && sudo flatpak override --filesystem=~/.themes/
sudo flatpak override --env=GTK_THEME=Mint-L-Dark-Blue && sudo flatpak override --env=ICON_THEME=Mint-L-Blue/

# ! réglages de vivaldi
rm -r ~/.config/vivaldi/
7z x ./DATA/vivaldi.7z.001 -o$HOME/.config/

# ! réglages de kodi
7z x ./DATA/kodi.7z.001 -o$HOME/
