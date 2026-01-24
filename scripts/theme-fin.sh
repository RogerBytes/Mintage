#!/bin/bash

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# Ajouter le script de dl vsix
sudo cp ./DATA/vsix-dl.sh /usr/local/bin/vsix-dl
sudo chmod +x /usr/local/bin/vsix-dl

# réglages de vivaldi
# [ -d ~/.config/vivaldi ] && rm -rf ~/.config/vivaldi
# Compresser vivaldi -> tar -I 'zstd -19' -cf - vivaldi/ | split -b 95M - vivaldi.tzst.
# cat ./DATA/vivaldi.tzst.* > vivaldi.tzst && tar -I zstd -xf vivaldi.tzst -C "$HOME/.config/"
# rm vivaldi.tzst

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
mkdir -p ~/.themes/
cp -r /usr/share/themes/Adwaita-dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Adwaita-dark

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
sudo tee /usr/local/bin/open-with-freetube > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/run.sh --file-forwarding io.freetubeapp.FreeTube @@u "$URL" @@
EOF
sudo chmod +x /usr/local/bin/open-with-freetube

# script pour ouvrir avec le téléchargeur de vidéo (permet le cli)
sudo tee /usr/local/bin/open-with-video-downloader > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
flatpak run com.github.unrud.VideoDownloader --url="$URL"
EOF
sudo chmod +x /usr/local/bin/open-with-video-downloader

# extension de libre office
latest=$(curl -s https://writingtool.org/writingtool/releases/ \
    | grep -oP 'WritingTool-[0-9\.]+\.oxt' \
    | sort -V \
    | tail -n1)
curl -LO "https://writingtool.org/writingtool/releases/$latest"

# Remplacer l'icone de menu
sudo cp ./DATA/linuxmint-logo-ring-symbolic.svg /usr/share/icons/hicolor/scalable/apps/

# On applique le thème de jdownloader
cp -a ./DATA/dot-var/* ~/.var/app
sed -i "s|\"defaultdownloadfolder\": *\"[^\"]*\"|\"defaultdownloadfolder\": \"${HOME}/Téléchargements/Téléchargements jd2\"|" ~/.var/app/org.jdownloader.JDownloader/data/jdownloader/cfg/org.jdownloader.settings.GeneralSettings.json
sed -i "s|\"devicename\": *\"[^\"]*\"|\"devicename\": \"JDownloader@$(whoami)\"|" ~/.var/app/org.jdownloader.JDownloader/data/jdownloader/cfg/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json



