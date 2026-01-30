#!/bin/bash

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------

# Ajouter le script de dl vsix

FILE=/usr/local/bin/vsix-dl
[ -f "$FILE" ] || {
  sudo cp ./assets/vsix-dl.sh /usr/local/bin/vsix-dl
  sudo chmod +x /usr/local/bin/vsix-dl
}

# réglages de vivaldi
# [ -d ~/.config/vivaldi ] && rm -rf ~/.config/vivaldi
# Compresser vivaldi -> tar -I 'zstd -19' -cf - vivaldi/ | split -b 95M - vivaldi.tzst.
# cat ./assets/vivaldi.tzst.* > vivaldi.tzst && tar -I zstd -xf vivaldi.tzst -C "$HOME/.config/"
# rm vivaldi.tzst

# réglages de floorp
# ! ATTENTION JE DOIS CORRIGER LES CHEMINS EN DUR LORS DE MA MAJ (depuis zéro pour alléger le bouzin)
FILE=~/.local/share/floorp-theme.installed
[ -f "$FILE" ] || {
  [ -d ~/.floorp ] && rm -rf ~/.floorp
  # Compresser floorp a faire à racine ~/ -> tar -I 'zstd -19' -cf - .floorp/ | split -b 95M - floorp.tzst.
  cat ./assets/floorp.tzst.* > floorp.tzst && tar -I zstd -xf floorp.tzst -C "$HOME/"
  rm floorp.tzst

  # corriger les chemins (nouveau test pour résoudre le souci)
  sed -i "s|rogerbytes|$(whoami)|g" ~/.floorp/qmjfloeo.Personnel/extensions.json
  sed -i "s|rogerbytes|$(whoami)|g" ~/.floorp/r2kzx8oj.Professionnel/extensions.json
  sed -i "s|rogerbytes|$(whoami)|g" ~/.floorp/i1gzqkvl.Test/extensions.json
  # faire en sens inverse (pour DUMP)
  # sed -i "s|$(whoami)|rogerbytes|g" ~/.floorp/qmjfloeo.Personnel/extensions.json
  # sed -i "s|$(whoami)|rogerbytes|g" ~/.floorp/r2kzx8oj.Professionnel/extensions.json
  # sed -i "s|$(whoami)|rogerbytes|g" ~/.floorp/i1gzqkvl.Test/extensions.json

  # decompresser le cache de floorp (nouveau test pour résoudre le souci)
  # compresser le cache de floorp a faire dans ~/.cache -> tar -I 'zstd -19' -cf - floorp/ | split -b 95M - floorp-cache.tzst.
  [ -d ~/.cache/floorp ] && rm -rf ~/.cache/floorp
  cat ./assets/floorp-cache.tzst.* > floorp-cache.tzst && tar -I zstd -xf floorp-cache.tzst -C "$HOME/.cache/"
  touch ~/.local/share/floorp-theme.installed
}

# réglages de thunderbird
FILE=~/.local/share/thunderbird-theme.installed
[ -f "$FILE" ] || {
  thunderbird & sleep 6 && pkill thunderbird
  rm -r ~/.thunderbird/
  tar -xzvf ./assets/thunderbird.tar.gz -C $HOME/
  touch ~/.local/share/thunderbird-theme.installed
}

# réglages de kodi (supprimé car pas à jour + pas assez de place)
# 7z x ./assets/kodi.7z.001 -o$HOME/

# Themes Flatpak
FILE=~/.local/share/flatpak-theme.installed
[ -f "$FILE" ] || { 
  mkdir -p ~/.themes/
  cp -r /usr/share/themes/Adwaita-dark ~/.themes/
  sudo flatpak override --filesystem=$HOME/.themes
  sudo flatpak override --env=GTK_THEME=Adwaita-dark
  touch ~/.local/share/flatpak-theme.installed
}

# Support nodejs pour extension freetube et videodl dans floorp
FILE="$HOME/.local/share/extension-floorp-nodejs.installed"
[ -f "$FILE" ] || {
  tar -xzf ./assets/client-node-js.tar.gz -C "$HOME" && \
  "$HOME/client-node-js/install.sh" && \
  rm -rf "$HOME/client-node-js" && \
  touch "$FILE"
}

# Télécharger des icones (en partie pour l'extension "external-application" de floorp & vivaldi)
FILE=$HOME/Local/Lanceurs/Icones/VideoDownloader.svg
[ -f "$FILE" ] || {
  mkdir -p "$HOME/Local/Lanceurs/Icones"
  wget https://raw.githubusercontent.com/Unrud/video-downloader/master/assets/com.github.unrud.VideoDownloader.svg -O "$HOME/Local/Lanceurs/Icones/VideoDownloader.svg"
  wget https://raw.githubusercontent.com/FreeTubeApp/FreeTube/refs/heads/development/_icons/icon.svg -O "$HOME/Local/Lanceurs/Icones/FreeTube.svg"
}

# script pour ouvrir avec FreeTube (permet le cli)
FILE=/usr/local/bin/open-with-freetube
[ -f "$FILE" ] || {
  sudo tee /usr/local/bin/open-with-freetube > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/run.sh --file-forwarding io.freetubeapp.FreeTube @@u "$URL" @@
EOF
  sudo chmod +x /usr/local/bin/open-with-freetube
}

# script pour ouvrir avec le téléchargeur de vidéo (permet le cli)
FILE=/usr/local/bin/open-with-video-downloader
[ -f "$FILE" ] || {
  sudo tee /usr/local/bin/open-with-video-downloader > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
flatpak run com.github.unrud.VideoDownloader --url="$URL"
EOF
  sudo chmod +x /usr/local/bin/open-with-video-downloader
}

# extension de libre office -> intégré à Libre Office, je laisse en comm pour l'instant
#FILE=~/.local/share/libreoffice-extension.installed
#[ -f "$FILE" ] || {
#  latest=$(curl -s https://writingtool.org/writingtool/releases/ \
#      | grep -oP 'WritingTool-[0-9\.]+\.oxt' \
#      | sort -V \
#      | tail -n1)
#  curl -L -o "$HOME/$latest" "https://writingtool.org/writingtool/releases/$latest"
#  touch ~/.local/share/libreoffice-extension.installed
#}

# On applique les réglages d'app flatpak, dont JD2 par exemple (noter les autres)
FILE="$HOME/.local/share/flatpak-config.installed"
[ -f "$FILE" ] || {
  rm -rf "$HOME/.var/app/org.jdownloader.JDownloader"
  cp -a ./assets/dot-var/app* "$HOME/.var/"
  for f in "$HOME/.var/app/"*.tar.gz; do
    [ -f "$f" ] && tar -xzf "$f" -C "$HOME/.var/app/"
  done
  rm -f "$HOME/.var/app/"*.tar.gz
  touch "$FILE"
}

# JDownloader
FILE=~/.local/share/jd2-config.installed
[ -f "$FILE" ] || {
  sed -i "s|\"defaultdownloadfolder\": *\"[^\"]*\"|\"defaultdownloadfolder\": \"${HOME}/Téléchargements/Téléchargements jd2\"|" ~/.var/app/org.jdownloader.JDownloader/assets/jdownloader/cfg/org.jdownloader.settings.GeneralSettings.json
  sed -i "s|\"devicename\": *\"[^\"]*\"|\"devicename\": \"JDownloader@$(whoami)\"|" ~/.var/app/org.jdownloader.JDownloader/assets/jdownloader/cfg/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json
  touch ~/.local/share/jd2-config.installed
}

# Réglages tmux
FILE=~/.tmux.conf
[ -f "$FILE" ] || {
  mkdir -p ~/.config/tmux/plugins/tmux-plugins && \
  git clone https://github.com/tmux-plugins/tmux-cpu.git ~/.config/tmux/plugins/tmux-plugins/tmux-cpu && \
  git clone https://github.com/tmux-plugins/tmux-battery.git ~/.config/tmux/plugins/tmux-plugins/tmux-battery && \
  git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux/

  cat > ~/.tmux.conf << 'EOF'
# ~/.tmux.conf

# Options to make tmux more pleasant
set -g mouse on
set -g default-terminal "tmux-256color"

# Configure the catppuccin plugin # latte, frappe, macchiato or mocha
set -g @catppuccin_flavor "macchiato"
set -g @catppuccin_window_status_style "rounded"

# Load catppuccin
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
# For TPM, instead use `run ~/.tmux/plugins/tmux/catppuccin.tmux`

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@catppuccin_status_application}"
set -agF status-right "#{E:@catppuccin_status_cpu}"
set -ag status-right "#{E:@catppuccin_status_session}"
set -ag status-right "#{E:@catppuccin_status_uptime}"
set -agF status-right "#{E:@catppuccin_status_battery}"

run ~/.config/tmux/plugins/tmux-plugins/tmux-cpu/cpu.tmux
run ~/.config/tmux/plugins/tmux-plugins/tmux-battery/battery.tmux
# Or, if using TPM, just run TPM
EOF

  # tmux kill-server
  # rm -f ~/.tmux.conf
  # rm -rf ~/.tmux/plugins
  # rm -rf ~/.config/tmux/plugins
  # tmux kill-server
}

# Réglages starship
FILE=~/.config/starship.toml
[ -f "$FILE" ] || {
  starship preset catppuccin-powerline -o ~/.config/starship.toml
  sed -i 's/^\(\s*palette\s*=\s*\).*$/\1"catppuccin_latte"/' ~/.config/starship.toml
  sed -i '/^\[line_break\]/,/^\[/{s/^\(\s*disabled\s*=\s*\).*$/\1"false"/}' ~/.config/starship.toml
  # sed -i 's/^\(\s*palette\s*=\s*\).*$/\1"catppuccin_mocha"/' ~/.config/starship.toml
  # sed -i 's/^\(\s*palette\s*=\s*\).*$/\1"catppuccin_frappe"/' ~/.config/starship.toml
  # sed -i 's/^\(\s*palette\s*=\s*\).*$/\1"catppuccin_macchiato"/' ~/.config/starship.toml
  # sed -i 's/^\(\s*palette\s*=\s*\).*$/\1"catppuccin_latte"/' ~/.config/starship.toml
}

# apk app
source ~/.config/user-dirs.dirs
DIR="${XDG_DESKTOP_DIR/#\$HOME/$HOME}/App Android"
[ -d "$DIR" ] || {
  source ~/.config/user-dirs.dirs
  mkdir -p "$DIR"
  latest_code=$(curl -s https://f-droid.org/api/v1/packages/org.kde.kdeconnect_tp \
    | grep -oP '"suggestedVersionCode":\s*\K[0-9]+')
  wget -P "${XDG_DESKTOP_DIR/#\$HOME/$HOME}/App Android" "https://f-droid.org/repo/org.kde.kdeconnect_tp_${latest_code}.apk"
  latest_code=$(curl -s https://f-droid.org/api/v1/packages/slowscript.warpinator \
    | grep -oP '"suggestedVersionCode":\s*\K[0-9]+')
  wget -P "${XDG_DESKTOP_DIR/#\$HOME/$HOME}/App Android" "https://f-droid.org/repo/slowscript.warpinator_${latest_code}.apk"
  touch "$DIR/Lisez-Moi.md"
  cat > "$DIR/Lisez-Moi.md" << 'EOF'
# Applications android

Ces deux applications sont `KDE Connect` et `Warpinator`.

## Liens

- <https://f-droid.org/fr/packages/slowscript.warpinator/>
- <https://f-droid.org/fr/packages/org.kde.kdeconnect_tp/>

## KDE Connect

Il permet de se servir de son smartphone comme d'une souris, d'envoyer des fichiers, de recevoir des notifications, faire office de laser de présentation et d'autres encore.

## Warpinator

Outil dédié au partage de fichiers.
EOF
}


# Ancienne manière de Passer le shell en zsh 
#FILE=~/.local/share/shell-zsh.installed
#[ -f "$FILE" ] || {
#  echo "Le shell va être changé en zsh. Appuie sur Entrée pour continuer..."
#  read -r
#  chsh -s "$(command -v zsh)"
#  touch ~/.local/share/shell-zsh.installed
#}

# Mettre ZSH comme shell, et redémmarrer
FILE=~/.local/share/shell-zsh.installed
[ -f "$FILE" ] || {
  sudo usermod -s "$(command -v zsh)" "$USER"
  touch ~/.local/share/shell-zsh.installed
  sudo reboot now 
}




# comment voir quel shell j'utilise
#printf "My current shell - %s\n" "$SHELL"

# la commande normale pour changer le shell c'est :
#chsh -s $(which zsh)
