#!/bin/sh

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

# Ciano Media Converter
flatpak install -y flathub com.github.robertsanseries.ciano

# Foliate
flatpak install -y flathub com.github.johnfactotum.Foliate

# FreeTube
flatpak install -y flathub io.freetubeapp.FreeTube

# Jdownloader
flatpak install -y flathub org.jdownloader.JDownloader

# MMEX (Money Manager Extra)
flatpak install -y flathub org.moneymanagerex.MMEX

# Mousai (shazam alternative)
flatpak install -y flathub io.github.seadve.Mousai

# OBS Studio
flatpak install -y flathub com.obsproject.Studio

# ProtonUp
flatpak install -y flathub net.davidotek.pupgui2

# Songrec (shazam)
flatpak install -y flathub com.github.marinm.songrec

# SweetHome 3D
flatpak install -y flathub com.sweethome3d.Sweethome3d

# VideoDownloader
flatpak install -y flathub com.github.unrud.VideoDownloader

# 2/ c) Installation depuis un paquet DEB
# ---------------------------------------

# AntimicroX
wget https://github.com/AntiMicroX/antimicrox/releases/download/3.3.2/antimicrox-3.3.2-ubuntu-22.04-x86_64.deb && sudo nala install -y ./antimicrox*.deb && rm antimicrox-3.3.2-ubuntu-22.04-x86_64.deb

# AppImage Launcher
sudo nala install -y ./DATA/App-ressource/appimagelauncher_2.2.0-gha111.d9d4c73+bionic_amd64.deb

# Ferdium
wget https://github.com/ferdium/ferdium-app/releases/download/v6.2.2/Ferdium-linux-6.2.2-amd64.deb && sudo nala install -y ./Ferdium*.deb && rm Ferdium-linux-6.2.2-amd64.deb

# RustDesk (pour remplacer teamviewer)
wget $(curl -s https://api.github.com/repos/rustdesk/rustdesk/releases/latest | grep "browser_download_url.*x86_64.deb" | cut -d '"' -f 4)
sudo dpkg -i rustdesk-*-x86_64.deb
rm rustdesk-*-x86_64.deb

# vivaldi
wget https://github.com/RogerBytes/Mintage/releases/download/v1.0.0-assets/vivaldi-stable_7.3.3635.11-1_amd64.deb
sudo nala install -y vivaldi-stable_7.3.3635.11-1_amd64.deb
rm  vivaldi-stable_7.3.3635.11-1_amd64.deb

# VSCodium
download_url=https://github.com/VSCodium/vscodium/releases/download/1.86.2.24054/codium_1.86.2.24054_amd64.deb
wget $download_url
downloaded_file=$(basename $download_url)
sudo nala install -y ./$downloaded_file
rm $downloaded_file


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

# Flatseal
flatpak install -y flathub com.github.tchx84.Flatseal

# Floorp
# https://ppa.floorp.app/ les instructions d'installation sont ici
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'
sudo apt update
sudo nala install -y floorp

# gCDEmu
sudo add-apt-repository -y ppa:cdemu/ppa && sudo nala update && sudo nala install -y cdemu-client

# Grub Customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer && sudo nala update && sudo nala install -y grub-customizer

# Haguichi (et hamachi avec)
sudo add-apt-repository -y ppa:ztefn/haguichi-stable && sudo nala update && sudo nala install -y haguichi && wget https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb && sudo nala install -y ./logmein-hamachi_2.1.0.203-1_amd64.deb && rm logmein-hamachi_2.1.0.203-1_amd64.deb

# Mangohud
sudo add-apt-repository -y ppa:oibaf/graphics-drivers && sudo nala update && sudo nala install -y mangohud

# Marktext (lecteur editeur markdown léger)
flatpak install -y flathub com.github.marktext.marktext

# YACReader
echo 'deb http://download.opensuse.org/repositories/home:/selmf/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:selmf.list && curl -fsSL https://download.opensuse.org/repositories/home:selmf/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_selmf.gpg > /dev/null && sudo nala update && sudo nala install -y yacreader

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
wget https://github.com/ruffle-rs/ruffle/releases/download/nightly-2022-12-07/ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && tar -zxvf ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && rm LICENSE.md README.md ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && sudo mv ruffle /bin && sudo touch /usr/share/applications/Flash\ Player.desktop && sudo echo "[Desktop Entry]" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Version=1.0" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Type=Application" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Name=Flash Player" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Comment=Lecteur Flash ruffle" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Exec=/bin/ruffle" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Icon=flash-player-properties" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Path=" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Terminal=false" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "StartupNotify=true" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Name[fr_FR]=Flash Player" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo chmod +x /usr/share/applications/Flash\ Player.desktop && xdg-mime default Flash\ Player.desktop application/vnd.adobe.flash.movie

# Java "Oracle"
# pour jre (les liens sont sur https://www.oracle.com/java/technologies/downloads/ ) ATTENTION GARDER LE TAR.GZ modifier le script après
sudo mkdir -p /usr/lib/jvm && sudo tar zxvf ./DATA/App-ressource/jre-8u351-linux-x64.tar.gz -C /usr/lib/jvm && sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jre1.8.0_351/bin/java" 1 && sudo update-alternatives --set java /usr/lib/jvm/jre1.8.0_351/bin/java && sudo touch /usr/share/applications/Java.desktop && sudo tee -a  /usr/share/applications/Java.desktop > /dev/null <<EOT
[Desktop Entry]
Exec=/usr/lib/jvm/jre1.8.0_351/bin/javaws
Name=Java
Icon=java
Type=Application
EOT
sudo chmod +x /usr/share/applications/Java.desktop ; sudo chmod +x /usr/lib/jvm/jre1.8.0_351/bin/javaws && xdg-mime default Java.desktop application/x-java-jnlp-file

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
