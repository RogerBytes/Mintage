#!/bin/bash

#3/ Theme et optimisations
#    3/ a) Réglages d'applications
#    3/ b) Applications au démarrage

# ----------------------------------------------------------------------------

# -------------------------------
# -- 3/ Theme et optimisations --
# -------------------------------


# 3/ a) Réglages d'applications
# -----------------------------

# autostart, ferdium, fontbase; freetube, menu panel, nemo, plank, stacer, synapse, transmission, reglages extensions & desklet & applet, applications préférées
FILE=~/.local/share/dotdir.installed
[ -f "$FILE" ] || { 
  cp -a ./DATA/dot-config/* ~/.config
  cp -a ./DATA/dot-cache/* ~/.cache
  touch ~/.local/share/dotdir.installed
}

# réglages .hidden
FILE=~/.local/share/hidden.installed
[ -f "$FILE" ] || { 
  cp ./DATA/Reglages/Hidden/.hidden ~/
  touch ~/.local/share/hidden.installed
}

# Police pour le terminal
FILE=~/.local/share/font.installed
[ -f "$FILE" ] || { 
  sudo cp -a ./DATA/font-terminal/* /usr/share/fonts/
  touch ~/.local/share/font.installed
}

# theme grub
FILE=~/.local/share/grub-theme.installed
[ -f "$FILE" ] || { 
  sudo cp ./DATA/calmgrub.tar.gz /root/
  sudo mkdir -p /boot/grub/themes/
  sudo tar -xzvf /root/calmgrub.tar.gz -C /boot/grub/themes/
  echo 'GRUB_THEME="/boot/grub/themes/calmgrub/theme.txt"' | sudo tee -a /etc/default/grub
  sudo update-grub
  sudo rm /root/calmgrub.tar.gz
  touch ~/.local/share/grub-theme.installed
}

# Copie de Fonds d'écrans'
FILE=~/.local/share/wallpaper.installed
[ -f "$FILE" ] || { 
  sudo cp -r ./DATA/Reglages/Wallpapers /usr/share/backgrounds/
  sudo cp ./DATA/Reglages/linuxmint/sele_ring.jpg /usr/share/backgrounds/linuxmint
  sudo cp ./DATA/Reglages/linuxmint/default_background.jpg /usr/share/backgrounds/linuxmint
  cp -r ./DATA/Reglages/Wallpapers ~/Images/
  touch ~/.local/share/wallpaper.installed
}

# Récupérer le panel et régler les icones / themes menu / workspaces
FILE=~/.local/share/panel.conf.installed
[ -f "$FILE" ] || { 
  dconf load /org/cinnamon/ < ./DATA/Reglages/panel.conf
  #pour le sauvegarder
  #dconf dump /org/cinnamon/ > ./DATA/Reglages/panel.conf
  touch ~/.local/share/panel.conf.installed
}

# regler nemo plank, wallpaper
FILE=~/.local/share/smallconf.installed
[ -f "$FILE" ] || { 
  dconf load /org/nemo/ < ./DATA/Reglages/nemo.dconf
  dconf load /net/launchpad/plank/ < ./DATA/Reglages/plank.dconf
  dconf load /org/x/editor/ < ./DATA/Reglages/xed.dconf
  dconf load /org/cinnamon/desktop/background/ < ./DATA/Reglages/wallapaper.dconf
  touch ~/.local/share/smallconf.installed
}

# pour dump
# dconf dump /org/nemo/ > ./DATA/Reglages/nemo.dconf
# dconf dump /net/launchpad/plank/ > ./DATA/Reglages/plank.dconf
# dconf dump /org/x/editor/ > ./DATA/Reglages/xed.dconf
# dconf dump /org/cinnamon/desktop/background/ > ./DATA/Reglages/wallapaper.dconf

# regler kitty
FILE=~/.local/share/custom-kitty.installed
[ -f "$FILE" ] || { 
  mkdir -p ~/.config/kitty
  [ -f ~/.config/kitty/kitty.conf ] && rm ~/.config/kitty/kitty.conf
  cat <<EOF > ~/.config/kitty/kitty.conf
font_family Fira Code
font_size 13.0
enable_ligatures yes
background #404040
foreground #ffffff
background_opacity 0.85
mouse_focus_follows_window no
map ctrl+l clear_terminal to_cursor active
EOF
  touch ~/.local/share/custom-kitty.installed
}

# Modifier les curseurs bibata (prends le dessus dans certaines application et lors de la connexion) :
FILE=~/.local/share/cursors.installed
[ -f "$FILE" ] || { 
  sudo rm -r /usr/share/icons/Bibata-Modern-Classic/cursors
  sudo cp -r /usr/share/icons/capitaine-cursors/cursors /usr/share/icons/Bibata-Modern-Classic/
  touch ~/.local/share/cursors.installed
}

# 3/ b) Applications au démarrage
# -------------------------------

# ajouter au demarrag vivaldi en caché
#cat > ~/.config/autostart/vivaldi-hidden.desktop << EOF
#[Desktop Entry]
#Type=Application
#Exec=/usr/bin/vivaldi-stable --no-startup-window
#Hidden=false
#NoDisplay=false
#X-GNOME-Autostart-enabled=true
#Name[en_US]=Vivaldi-silent
#Name=Vivaldi-silent
#Comment[en_US]=Start Vivaldi at startup
#Comment=Start Vivaldi at startup
#EOF

# ajouter au demarrage caffeine-indicator
FILE=~/.local/share/caffeine.installed
[ -f "$FILE" ] || { 
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
  touch ~/.local/share/caffeine.installed
}

# Optimisations

# Désactiver les effets et animations de cinammon
FILE=~/.local/share/anim.installed
[ -f "$FILE" ] || { 
  gsettings set org.cinnamon.desktop.interface enable-animations false
  touch ~/.local/share/anim.installed
}

# Désactiver rotation de l'écran
FILE=~/.local/share/rotate.installed
[ -f "$FILE" ] || { 
  gsettings set org.cinnamon.settings-daemon.peripherals.touchscreen orientation-lock true
  touch ~/.local/share/rotate.installed
}

# Les sous dossiers de téléchargements
FILE=~/.local/share/dl-dir.installed
[ -f "$FILE" ] || { 
  mkdir -p ~/Téléchargements/Téléchargements\ navigateur/
  mkdir -p ~/Téléchargements/Téléchargements\ torrent/
  mkdir -p ~/Téléchargements/Téléchargements\ mail/
  mkdir -p ~/Téléchargements/Téléchargements\ jd2/
  mkdir -p ~/Téléchargements/Téléchargements\ ferdium/
  touch ~/.local/share/dl-dir.installed
}

# On ajoute quelques dossiers
FILE=~/.local/share/dir.installed
[ -f "$FILE" ] || { 
  mkdir -p ~/Local/
  mkdir -p ~/.github/
  mkdir -p ~/Local/Git
  mkdir -p ~/Jeux/
  mkdir -p ~/Public/
  mkdir -p ~/Musique/Radio++/
  touch ~/.local/share/dir.installed
}

# réglages de zsh
FILE=~/.local/share/dot-zshrc.installed
[ -f "$FILE" ] || { 
  cp ./DATA/.zshrc ~/
  touch ~/.local/share/dot-zshrc.installed
}

# Passer le shell en zsh
FILE=~/.local/share/shell-zsh.installed
[ -f "$FILE" ] || { 
  echo "Le shell va être changé en zsh. Appuie sur Entrée pour continuer..."
  read -r
  kitty -e bash -c 'chsh -s $(which zsh); exec bash'
  touch ~/.local/share/shell-zsh.installed
}

# comment voir quel shell j'utilise
#printf "My current shell - %s\n" "$SHELL"

# la commande normale pour changer le shell c'est :
#chsh -s $(which zsh)
