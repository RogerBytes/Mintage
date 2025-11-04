#!/bin/bash

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# réglages de vivaldi
[ -d ~/.config/vivaldi ] && rm -rf ~/.config/vivaldi

#Compresser vivaldi -> tar -I 'zstd -19' -cf - vivaldi/ | split -b 95M - vivaldi.tzst.
cat ./DATA/vivaldi.tzst.* > vivaldi.tzst && tar -I zstd -xf vivaldi.tzst -C "$HOME/.config/"
rm vivaldi.tzst

# réglages de floorp
[ -d ~/.floorp ] && rm -rf ~/.floorp
# Compresser floorp -> tar -I 'zstd -19' -cf - .floorp/ | split -b 95M - floorp.tzst.
cat ./DATA/floorp.tzst.* > floorp.tzst && tar -I zstd -xf floorp.tzst -C "$HOME/"
rm floorp.tzst

# corriger les chemins (nouveau test pour résoudre le souci)
sed -i "s|rogerbytes|$(whoami)|g" ~/.floorp/0a2qqe25.default/extensions.json
sed -i "s|rogerbytes|$(whoami)|g" ~/.floorp/vnvbfnz3.default-release/extensions.json

# decompresser le cache de floorp (nouveau test pour résoudre le souci)
# compresser le cache de floorp -> tar -I 'zstd -19' -cf - .cache/floorp/ | split -b 95M - floorp-cache.tzst.
[ -d ~/.cache/floorp ] && rm -rf ~/.cache/floorp
cat ./DATA/floorp-cache.tzst.* > floorp-cache.tzst && tar -I zstd -xf floorp-cache.tzst -C "$HOME/.cache/"

# réglages de thunderbird
rm -r ~/.thunderbird/
tar -xzvf ./DATA/thunderbird.tar.gz -C $HOME/

# réglages de kodi (supprimé car pas à jour + pas assez de place)
# 7z x ./DATA/kodi.7z.001 -o$HOME/

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

# Support native des host de nodjs
curl -s https://api.github.com/repos/andy-portmen/native-client/releases/latest \
  | grep "browser_download_url.*linux.zip" \
  | head -n 1 \
  | sed -E 's/.*"(https[^"]+)".*/\1/' \
  | xargs -I{} curl -L -o "$HOME/linux.zip" {}

unzip -o "$HOME/linux.zip" -d "$HOME/native-client"

. "$HOME/native-client/install.sh"
rm -r "$HOME/native-client"
rm "$HOME/linux.zip"


# Télécharger des icones (en partie pour l'extension "external-application" de floorp & vivaldi)
mkdir -p "$HOME/Local/Lanceurs/Icones"
wget https://raw.githubusercontent.com/Unrud/video-downloader/master/data/com.github.unrud.VideoDownloader.svg -O "$HOME/Local/Lanceurs/Icones/VideoDownloader.svg"
wget https://raw.githubusercontent.com/FreeTubeApp/FreeTube/refs/heads/development/_icons/icon.svg -O "$HOME/Local/Lanceurs/Icones/FreeTube.svg"


# script pour ouvrir avec FreeTube (permet le cli)
sudo tee /usr/local/bin/open-with-freetube.sh > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/run.sh --file-forwarding io.freetubeapp.FreeTube @@u "$URL" @@
EOF
sudo chmod +x /usr/local/bin/open-with-freetube.sh

# script pour ouvrir avec le téléchargeur de vidéo (permet le cli)
sudo tee /usr/local/bin/open-with-video-downloader.sh > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
flatpak run com.github.unrud.VideoDownloader --url="$URL"
EOF
sudo chmod +x /usr/local/bin/open-with-video-downloader.sh

# Script pour relancer proprement cinnamon (via reset-cinnamon.sh)
sudo tee /usr/local/bin/reset-cinnamon.sh > /dev/null << 'EOF'
#!/bin/bash
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
(sleep 5; notify-send 'Cinnamon relancé' 'L’environnement de bureau a été redémarré.') &
old_pid=$(pgrep -o cinnamon)
setsid cinnamon --replace >/dev/null 2>&1 < /dev/null &
# Attendre que l'ancien cinnamon ait disparu
while kill -0 "$old_pid" 2>/dev/null; do
    sleep 0.2
done
xsetroot -cursor_name left_ptr
EOF

sudo chmod +x /usr/local/bin/reset-cinnamon.sh



# On applique le thème de jdownloader
cp -a ./DATA/var-cache/* ~/.var
sed -i "s|\"defaultdownloadfolder\": *\"[^\"]*\"|\"defaultdownloadfolder\": \"${HOME}/Téléchargements/Téléchargements jd2\"|" ~/.var/app/org.jdownloader.JDownloader/data/jdownloader/cfg/org.jdownloader.settings.GeneralSettings.json
sed -i "s|\"devicename\": *\"[^\"]*\"|\"devicename\": \"JDownloader@$(whoami)\"|" ~/.var/app/org.jdownloader.JDownloader/data/jdownloader/cfg/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json

# Réglage de radio++
sed -i "s|file://\$HOME/Musique/Radio++|file://$HOME/Musique/Radio++|g" fichier.json ~/.config/cinnamon/spices/radio@driglu4it/radio@driglu4it.json

# Dependances de radio (A installer en dernier du setup, sinon il ne trouve pas pulseaudio, qui installe pacmd)
sudo nala install -y python3-brotli python3-polib ffmpeg ffmpegthumbnailer yt-dlp libnotify-bin at sox mpv mpv-mpris

echo "installation de pulseaudio"
sudo nala install -y pulseaudio


# On peut verifier que pacman est installé avec pacmd --version
