#!/bin/sh

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# réglages de vivaldi
rm -r ~/.config/vivaldi/
tar -xzvf ./DATA/vivaldi.tar.gz -C $HOME/.config/

# réglages de thunderbird
rm -r ~/.thunderbird/
tar -xzvf ./DATA/thunderbird.tar.gz -C $HOME/

# réglages de kodi
7z x ./DATA/kodi.7z.001 -o$HOME/

# Themes Flatpak
sudo cp -r /usr/share/icons/Mint-L-Blue ~/.icons/ && sudo cp -r /usr/share/themes/Mint-L-Dark-Blue ~/.themes/
flatpak install -y org.gtk.Gtk3theme.Yaru-dark
sudo flatpak override --filesystem=~/.icons && sudo flatpak override --filesystem=~/.themes
sudo flatpak override --env=GTK_THEME=Mint-L-Dark-Blue
sudo flatpak override --env=ICON_THEME=Mint-L-Blue
sudo flatpak override --filesystem=/usr/share/themes/ com.github.robertsanseries.ciano
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.robertsanseries.ciano
sudo flatpak override --filesystem=/usr/share/themes/ org.jdownloader.JDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue org.jdownloader.JDownloader
sudo flatpak override --filesystem=/usr/share/themes/ io.github.seadve.Mousai
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue io.github.seadve.Mousai
sudo flatpak override --filesystem=/usr/share/themes/ net.davidotek.pupgui2
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue net.davidotek.pupgui2
sudo flatpak override --filesystem=/usr/share/themes/ com.github.unrud.VideoDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.unrud.VideoDownloader

# On applique le thème de jdownloader
sudo cp -a ./DATA/var-cache/* ~/.var

# Dependances de radio (A installer en dernier du setup, sinon il ne trouve pas pulseaudio, qui installe pacmd)
sudo nala install -y python3-brotli python3-polib ffmpeg ffmpegthumbnailer yt-dlp libnotify-bin at sox mpv pulseaudio mpv-mpris

# On peut verifier que pacman est installé avec pacmd --version
