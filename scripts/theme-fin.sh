#!/bin/sh

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# réglages de vivaldi
rm -r ~/.config/vivaldi/
7z x ./DATA/vivaldi.7z.001 -o$HOME/.config/

# réglages de kodi
7z x ./DATA/kodi.7z.001 -o$HOME/

# Régler le thème des applications flatpak
sudo cp -r /usr/share/icons/Mint-L-Blue ~/.icons/ && sudo cp -r /usr/share/themes/Mint-L-Dark-Blue ~/.themes/
sudo flatpak override --filesystem=~/.icons && sudo flatpak override --filesystem=~/.themes/
sudo flatpak override --env=GTK_THEME=Mint-L-Dark-Blue && sudo flatpak override --env=ICON_THEME=Mint-L-Blue/

# Donner accès à flatpak aux path utilisateur des icones et des themes
sudo flatpak override --filesystem=~/.icons && sudo flatpak override --filesystem=~/.themes

# Séléctionner le thème et le pack d'icone de flatpak
sudo flatpak override --env=GTK_THEME=Mint-L-Dark-Blue && sudo flatpak override --env=ICON_THEME=Mint-L-Blue

# Ajouter le thème au pp sous gtk4 remplacer app-id par le paquet flatpak

sudo flatpak override --filesystem=/usr/share/themes/ com.github.robertsanseries.ciano
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.robertsanseries.ciano
sudo flatpak override --filesystem=/usr/share/themes/ org.jdownloader.JDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue org.jdownloader.JDownloader
sudo flatpak override --filesystem=/usr/share/themes/ net.lutris.Lutris
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue net.lutris.Lutris
sudo flatpak override --filesystem=/usr/share/themes/ io.github.seadve.Mousai
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue io.github.seadve.Mousai
sudo flatpak override --filesystem=/usr/share/themes/ net.davidotek.pupgui2
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue net.davidotek.pupgui2
sudo flatpak override --filesystem=/usr/share/themes/ de.haeckerfelix.Shortwave
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue de.haeckerfelix.Shortwave
sudo flatpak override --filesystem=/usr/share/themes/ com.sweethome3d.Sweethome3d
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.sweethome3d.Sweethome3d
sudo flatpak override --filesystem=/usr/share/themes/ com.github.unrud.VideoDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.unrud.VideoDownloader