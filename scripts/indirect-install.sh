#!/bin/bash

# en attente
# Open Snitch NON INSTALLE EN ATTENTE DE VERSION PLUS STABLE
# sudo nala install -y python3-pip python3-pyasn && pip3 install --user qt-material && pip3 install --user --ignore-installed grpcio && wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/opensnitch_1.5.2-1_amd64.deb && sudo nala install -y ./opensnitch_1.5.2-1_amd64.deb && rm opensnitch_1.5.2-1_amd64.deb && wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/python3-opensnitch-ui_1.5.2-1_all.deb && sudo nala install -y ./python3-opensnitch-ui_1.5.2-1_all.deb && rm python3-opensnitch-ui_1.5.2-1_all.deb

#2/ Applications
#    2/ b) Installation Flatpak
#    2/ c) Installation depuis un paquet DEB
#    2/ d) Installation avec un PPA
#    2/ e) Installation paquets linux tar.gz
#    2/ f) Installation de appimage
#    2/ g) Purge et nettoyage PPA
#    2/ h) Compilations

# ----------------------------------------------------------------------------

# 2/ b) Installation Flatpak
# --------------------------

# Apostrophe
flatpak install -y flathub org.gnome.gitlab.somas.Apostrophe

# Ciano Media Converter
flatpak install -y flathub com.github.robertsanseries.ciano

# Dialect
flatpak install -y flathub app.drey.Dialect

# Dr. Robotnik's Ring Racers
flatpak install -y flathub org.kartkrew.RingRacers

# Emoji Mart
flatpak install -y flathub io.github.vemonet.EmojiMart

# Flatseal
flatpak install -y flathub com.github.tchx84.Flatseal

# Foliate
flatpak install -y flathub com.github.johnfactotum.Foliate

# Jdownloader
flatpak install -y flathub org.jdownloader.JDownloader

# Mission Center
flatpak install -y flathub io.missioncenter.MissionCenter

# MMEX (Money Manager Extra)
flatpak install -y flathub org.moneymanagerex.MMEX

# Moonlight
flatpak install -y flathub com.moonlight_stream.Moonlight

# Mousai (shazam alternative)
flatpak install -y flathub io.github.seadve.Mousai

# OBS Studio
flatpak install -y flathub com.obsproject.Studio

# PDF Arranger
flatpak install -y flathub com.github.jeromerobert.pdfarranger

# ProtonUp
flatpak install -y flathub net.davidotek.pupgui2

# PwuControl
flatpak install -y flathub com.saivert.pwvucontrol

# Songrec (shazam)
flatpak install -y flathub com.github.marinm.songrec

# SweetHome 3D
flatpak install -y flathub com.sweethome3d.Sweethome3d

# VacuumTube
flatpak install -y flathub rocks.shy.VacuumTube
# https://www.youtube.com/activate

# VideoDownloader
flatpak install -y flathub com.github.unrud.VideoDownloader

# YACReader
flatpak install -y flathub com.yacreader.YACReader

# 2/ c) Installation depuis un paquet DEB
# ---------------------------------------

# AntimicroX
repo="AntiMicroX/antimicrox"
ubuntu_version=24.04
version=$(curl -s https://api.github.com/repos/$repo/releases \
  | grep -m1 '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=$(curl -s https://api.github.com/repos/$repo/releases/tags/$version \
  | grep '"name":' | grep "${ubuntu_version}-x86_64.deb" | sed -E 's/.*"([^"]+)".*/\1/')
wget "https://github.com/$repo/releases/download/${version}/${file}"
sudo nala install -y ${file} && rm ${file}

# AppImage Launcher
repo="TheAssassin/AppImageLauncher"
version=$(curl -s https://api.github.com/repos/$repo/releases \
  | grep -m1 '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=$(curl -s https://api.github.com/repos/$repo/releases/tags/$version \
  | grep '"name":' | grep "_amd64.deb" | sed -E 's/.*"([^"]+)".*/\1/')
wget "https://github.com/$repo/releases/download/${version}/${file}"
sudo nala install -y ${file} && rm ${file}

# Ferdium
repo="ferdium/ferdium-app"
version=$(curl -s https://api.github.com/repos/$repo/releases/latest \
  | grep '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=$(curl -s https://api.github.com/repos/$repo/releases/tags/$version \
  | grep '"name":' | grep "amd64.deb" | sed -E 's/.*"([^"]+)".*/\1/')
wget "https://github.com/$repo/releases/download/${version}/${file}"
sudo nala install -y ${file} && rm ${file}

# RustDesk
repo="rustdesk/rustdesk"
version=$(curl -s https://api.github.com/repos/$repo/releases/latest \
  | grep '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=$(curl -s https://api.github.com/repos/$repo/releases/tags/$version \
  | grep '"name":' | grep "x86_64.deb" | sed -E 's/.*"([^"]+)".*/\1/')
wget "https://github.com/$repo/releases/download/${version}/${file}"
sudo nala install -y ${file} && rm ${file}

# vivaldi
wget -O vivaldi-latest.deb "$(curl -s https://vivaldi.com/download/ | grep -o 'https://downloads\.vivaldi\.com/stable/vivaldi-stable_[^"]*amd64\.deb' | head -n1)"
sudo nala install -y vivaldi-latest.deb
rm vivaldi-latest.deb

# VSCodium
repo="VSCodium/vscodium"
version=$(curl -s https://api.github.com/repos/$repo/releases/latest \
  | grep '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=codium_${version}_amd64.deb
wget "https://github.com/$repo/releases/download/${version}/${file}"
sudo nala install -y ${file} && rm ${file}

# 2/ d) Installation avec un PPA
# ------------------------------

# Avidemux
sudo nala install -y software-properties-common apt-transport-https &&
sudo add-apt-repository -y ppa:xtradeb/apps
sudo nala update
sudo nala install -y avidemux-qt avidemux-cli

# Brightness Controller (gère le contraste/couleur des moniteurs)
sudo add-apt-repository -y ppa:apandada1/brightness-controller && sudo nala update && sudo nala install -y brightness-controller

# Cozy Audiobook
sudo add-apt-repository -y ppa:cozy-team/cozy && sudo nala update && sudo nala install -y cozy

# Floorp
# https://ppa.floorp.app/ les instructions d'installation sont ici
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list "https://ppa.floorp.app/Floorp.list"
sudo apt update
sudo nala install -y floorp

# gCDEmu
sudo add-apt-repository -y ppa:cdemu/ppa && sudo nala update && sudo nala install -y cdemu-client

# Grub Customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer && sudo nala update && sudo nala install -y grub-customizer

# Haguichi (et hamachi avec)
sudo add-apt-repository -y ppa:ztefn/haguichi-stable && sudo nala update && sudo nala install -y haguichi
link=$(curl -s https://www.vpn.net/linux | grep -oP '(?<=href=")/installers/logmein-hamachi_[^"]+_amd64\.deb' | sed 's|^|https://www.vpn.net|')
file=$(basename "$link")
wget  $link
sudo nala install -y $file && rm $file

# Mangohud
sudo add-apt-repository -y ppa:oibaf/graphics-drivers && sudo nala update && sudo nala install -y mangohud

# 2/ e) Installation paquets linux tar.gz
# ---------------------------------------

# Curseur La Capitaine GARDER capitaine-cursors-r4.tar.gz
sudo nala install -y x11-apps
tar -zxvf ./DATA/App-ressource/capitaine-cursors-r4.tar.gz
sudo cp -pr ./capitaine-cursors ~/.icons/capitaine-cursors
sudo cp -pr ./capitaine-cursors /usr/share/icons/capitaine-cursors
sudo gtk-update-icon-cache /usr/share/icons/capitaine-cursors/
sudo gtk-update-icon-cache ~/.icons/capitaine-cursors/
rm -r capitaine-cursors

# Flash Player Ruffle
version=$(curl -s https://api.github.com/repos/ruffle-rs/ruffle/releases \
  | grep -m1 '"tag_name":' \
  | sed -E 's/.*"([^"]+)".*/\1/')
file=$(curl -s https://api.github.com/repos/ruffle-rs/ruffle/releases/tags/$version \
  | grep '"name":' | grep 'linux-x86_64' | sed -E 's/.*"([^"]+)".*/\1/')
wget "https://github.com/ruffle-rs/ruffle/releases/download/${version}/${file}"
tar -zxvf ${file}
rm LICENSE.md README.md ${file}
rm -r extras
sudo mv ruffle /bin
sudo touch /usr/share/applications/Flash\ Player.desktop
sudo tee /usr/share/applications/Flash\ Player.desktop > /dev/null << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Flash Player
Comment=Lecteur Flash ruffle
Exec=/bin/ruffle
Icon=flash-player-properties
Path=
Terminal=false
StartupNotify=true
Name[fr_FR]=Flash Player
EOF
sudo chmod +x /usr/share/applications/Flash\ Player.desktop
xdg-mime default Flash\ Player.desktop application/vnd.adobe.flash.movie

# Java "Oracle"
# pour jre (les liens sont sur https://www.oracle.com/java/technologies/downloads/ ) ATTENTION GARDER LE TAR.GZ modifier le script après
sudo mkdir -p /usr/lib/jvm && sudo tar zxvf ./DATA/App-ressource/jre-8u351-linux-x64.tar.gz -C /usr/lib/jvm && sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jre1.8.0_351/bin/java" 1 && sudo update-alternatives --set java /usr/lib/jvm/jre1.8.0_351/bin/java

# Ajouter le script de java_old.sh
sudo cp ./DATA/java_old.sh /usr/local/bin/java_old
sudo chmod +x /usr/local/bin/java_old

# Crée le lanceur Java Web Start et type mime
sudo bash -c 'cat > /usr/share/applications/Java_1.8.desktop <<EOL
[Desktop Entry]
Name=Java Web Start
Comment=Lancer les fichiers .jnlp avec  Java 1.8
Exec=java_old %f
Icon=java
Terminal=false
Type=Application
MimeType=application/x-java-jnlp-file;
EOL'
sudo chmod +x /usr/share/applications/Java_1.8.desktop
sudo update-desktop-database /usr/share/applications
xdg-mime default Java_1.8.desktop application/x-java-jnlp-file

# JD2 navigateur
tar -zxvf ./DATA/App-ressource/jd2-vivaldi.tar.gz
./jd2-vivaldi/install.sh
rm -r jd2-vivaldi

# 2/ f) Installation de appimage
# ------------------------------

# On crée le dossier par défaut de AppImage Launcher
mkdir ~/ApplicationsTemp

# Fontbase
lastfontbase=$(curl -s https://fontba.se/downloads/linux | grep -o 'https://[^"]*\.AppImage')
wget -P ~/ApplicationsTemp $lastfontbase
downloaded_file=$(basename $lastfontbase)
chmod +x ~/ApplicationsTemp/$downloaded_file

# JoalDesktop
download_url=$(curl -s https://api.github.com/repos/anthonyraymond/joal-desktop/releases/latest | jq -r '.assets[] | select(.name | endswith(".AppImage")) | .browser_download_url')
wget -P ~/ApplicationsTemp $download_url
downloaded_file=$(basename $download_url)
chmod +x ~/ApplicationsTemp/$downloaded_file

# pCloud
sudo nala install -y libfuse2t64
cp ./DATA/App-ressource/pcloud ~/ApplicationsTemp/
chmod +x ~/ApplicationsTemp/pcloud

# 2/ g) Purge et nettoyage PPA
# ----------------------------

# Firefox -> Floorp
sudo nala purge -y firefox

# Formateur de clé USB -> Gparted
sudo apt purge -y mintstick

# Sticky (note) -> xpad
sudo apt purge -y sticky

# Suppresion PPA Avidemux
sudo add-apt-repository --remove -y ppa:xtradeb/apps

# Suppresion PPA brightness-controller
sudo add-apt-repository --remove -y ppa:apandada1/brightness-controller

# Suppresion PPA gCdemu
sudo add-apt-repository --remove -y ppa:cdemu/ppa

# Suppresion PPA Grub Customizer
sudo add-apt-repository --remove -y ppa:danielrichter2007/grub-customizer

# Suppresion PPA Haguichi
sudo add-apt-repository --remove -y ppa:ztefn/haguichi-stable
sudo nala update

# 2/ h) Compilations
# ------------------

# Autres
