#!/bin/bash

# en attente https://github.com/evilsocket/opensnitch
# Open Snitch NON INSTALLE EN ATTENTE DE VERSION PLUS STABLE
# sudo nala install -y python3-pip python3-pyasn && pip3 install --user qt-material && pip3 install --user --ignore-installed grpcio && wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/opensnitch_1.5.2-1_amd64.deb && sudo nala install -y ./opensnitch_1.5.2-1_amd64.deb && rm opensnitch_1.5.2-1_amd64.deb && wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/python3-opensnitch-ui_1.5.2-1_all.deb && sudo nala install -y ./python3-opensnitch-ui_1.5.2-1_all.deb && rm python3-opensnitch-ui_1.5.2-1_all.deb

#2/ Applications
#    2/ b) Installation Flatpak
#    2/ c) Installation depuis un paquet DEB
#    2/ d) Installation avec un PPA
#    2/ e) Installation paquets linux tar.gz
#    2/ f) Installation de appimage
#    2/ g) Purge et nettoyage PPA
# 3/ Customisation Cinnamon
# 3/ a) Applets
# 3/ b)  Desklet
# 3/ c) Extensions

# ----------------------------------------------------------------------------

# 2/ b) Installation Flatpak
# --------------------------

# Anki
flatpak install -y flathub net.ankiweb.Anki

# Apostrophe
flatpak install -y flathub org.gnome.gitlab.somas.Apostrophe

# Ciano Media Converter
flatpak install -y flathub com.github.robertsanseries.ciano

# Chromium
flatpak install -y flathub io.github.ungoogled_software.ungoogled_chromium

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

# Freetube
flatpak install -y flathub io.freetubeapp.FreeTube

# Gear Lever (appimage manager dans le dossier ~/AppImagesAInstaller)
flatpak install -y flathub it.mijorus.gearlever

# Jdownloader
flatpak install -y flathub org.jdownloader.JDownloader

# Keypunch
flatpak install -y dev.bragefuglseth.Keypunch

# Lact
flatpak install -y flathub io.github.ilya_zlobintsev.LACT

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

# Resources
flatpak install -y flathub net.nokyan.Resources

# Ruffle Flash Player
flatpak install -y flathub rs.ruffle.Ruffle

# RustDesk
flatpak install -y flathub com.rustdesk.RustDesk

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

# AppImage Launcher (remplacer par Gear Lever pour l'instant) paquet:appimagelauncher
#repo="TheAssassin/AppImageLauncher"
#version=$(curl -s https://api.github.com/repos/$repo/releases \
#  | grep -m1 '"tag_name":' \
#  | sed -E 's/.*"([^"]+)".*/\1/')
#file=$(curl -s https://api.github.com/repos/$repo/releases/tags/$version \
#  | grep '"name":' | grep "_amd64.deb" | sed -E 's/.*"([^"]+)".*/\1/')
#wget "https://github.com/$repo/releases/download/${version}/${file}"
#sudo nala install -y ${file} && rm ${file}

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

# Element https://element.io/download#linux
sudo nala install -y wget apt-transport-https
sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list
sudo nala update
sudo nala install -y element-desktop

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
mkdir ~/AppImagesAInstaller

# Fontbase
lastfontbase=$(curl -s https://fontba.se/downloads/linux | grep -o 'https://[^"]*\.AppImage')
wget -P ~/AppImagesAInstaller $lastfontbase
downloaded_file=$(basename $lastfontbase)
chmod +x ~/AppImagesAInstaller/$downloaded_file

# JoalDesktop
download_url=$(curl -s https://api.github.com/repos/anthonyraymond/joal-desktop/releases/latest | jq -r '.assets[] | select(.name | endswith(".AppImage")) | .browser_download_url')
wget -P ~/AppImagesAInstaller $download_url
downloaded_file=$(basename $download_url)
chmod +x ~/AppImagesAInstaller/$downloaded_file

# pCloud (ne pas chercher à recup via curl ou wget sur le site, impossible)
sudo nala install -y libfuse2t64
cp ./DATA/App-ressource/pcloud.appimage ~/AppImagesAInstaller/
chmod +x ~/AppImagesAInstaller/pcloud.appimage

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

# 3/ Customisation Cinnamon
# ----------------------------

# 3/ a) Applets
# -------------

# Cinnamenu
wget https://cinnamon-spices.linuxmint.com/files/applets/Cinnamenu@json.zip
unzip Cinnamenu@json.zip -d ~/.local/share/cinnamon/applets
rm Cinnamenu@json.zip

# Color Picker
wget https://cinnamon-spices.linuxmint.com/files/applets/color-picker@fmete.zip
unzip color-picker@fmete.zip -d ~/.local/share/cinnamon/applets
rm color-picker@fmete.zip

# Double heure
wget https://cinnamon-spices.linuxmint.com/files/desklets/dual-datetime@rcalixte.zip
unzip dual-datetime@rcalixte.zip -d ~/.local/share/cinnamon/desklets
rm dual-datetime@rcalixte.zip

# Tiroir
wget https://cinnamon-spices.linuxmint.com/files/applets/show-hide-applets@mohammad-sn.zip
unzip show-hide-applets@mohammad-sn.zip -d ~/.local/share/cinnamon/applets
rm show-hide-applets@mohammad-sn.zip

# GPaste rechargé
wget https://cinnamon-spices.linuxmint.com/files/applets/gpaste-reloaded@feuerfuchs.eu.zip
unzip gpaste-reloaded@feuerfuchs.eu.zip -d ~/.local/share/cinnamon/applets
rm gpaste-reloaded@feuerfuchs.eu.zip
sudo nala install -y gpaste-2 gir1.2-gpaste-2

# Forcer à quitter
wget https://cinnamon-spices.linuxmint.com/files/applets/force-quit@cinnamon.org.zip
unzip force-quit@cinnamon.org.zip -d ~/.local/share/cinnamon/applets
rm force-quit@cinnamon.org.zip

# Météo
wget https://cinnamon-spices.linuxmint.com/files/desklets/bbcwx@oak-wood.co.uk.zip
unzip bbcwx@oak-wood.co.uk.zip -d ~/.local/share/cinnamon/desklets
rm bbcwx@oak-wood.co.uk.zip

# Minuterie
wget https://cinnamon-spices.linuxmint.com/files/applets/timer@Severga.zip
unzip timer@Severga.zip -d ~/.local/share/cinnamon/applets
rm timer@Severga.zip

# Radio ++
# Dependances de radio ++
sudo nala install -y python3-brotli python3-polib ffmpeg ffmpegthumbnailer yt-dlp libnotify-bin at sox mpv mpv-mpris
wget https://cinnamon-spices.linuxmint.com/files/applets/radio@driglu4it.zip
unzip radio@driglu4it.zip -d ~/.local/share/cinnamon/applets
rm radio@driglu4it.zip
# Réglage de radio++
sed -i "s|file://\$HOME/Musique/Radio++|file://$HOME/Musique/Radio++|g" fichier.json ~/.config/cinnamon/spices/radio@driglu4it/radio@driglu4it.json

# ScreenShot+Record Desktop
wget https://cinnamon-spices.linuxmint.com/files/applets/ScreenShot+RecordDesktop@tech71.zip
unzip ScreenShot+RecordDesktop@tech71.zip -d ~/.local/share/cinnamon/applets
rm ScreenShot+RecordDesktop@tech71.zip

# SmallCalc
wget https://cinnamon-spices.linuxmint.com/files/applets/smallcalc_applet@lerc.sds.zip
unzip smallcalc_applet@lerc.sds.zip -d ~/.local/share/cinnamon/applets
rm smallcalc_applet@lerc.sds.zip

# Son 150%
wget https://cinnamon-spices.linuxmint.com/files/applets/sound150@claudiux.zip
unzip sound150@claudiux.zip -d ~/.local/share/cinnamon/applets
rm sound150@claudiux.zip

# Weather
wget https://cinnamon-spices.linuxmint.com/files/applets/weather@mockturtl.zip
unzip weather@mockturtl.zip -d ~/.local/share/cinnamon/applets
rm weather@mockturtl.zip

# Dépendances de screenshot
sudo nala install -y ffmpeg xdotool x11-utils

# Dépendances de color picker
sudo nala install -y xclip python3-xlib

# Dépendances de radio ++
sudo nala install -y mpv libmpv-dev sox libsox-fmt-all at python3-polib mpv-mpris
sudo apt purge -y yt-dlp
# https://github.com/yt-dlp/yt-dlp
sudo nala install -y pipx
pipx ensurepath
pipx install yt-dlp
sudo touch /usr/local/bin/update_yt_dlp.sh
echo -e "#! /bin/bash\npipx upgrade yt-dlp" | sudo tee /usr/local/bin/update_yt_dlp.sh > /dev/null
sudo chmod +x /usr/local/bin/update_yt_dlp.sh
sudo crontab -l | { cat; echo "@reboot /usr/local/bin/update_yt_dlp.sh"; } | sudo crontab -

# 3/ b)  Desklet
# -------------

# CPU Load
wget https://cinnamon-spices.linuxmint.com/files/desklets/cpuload@kimse.zip
unzip cpuload@kimse.zip -d ~/.local/share/cinnamon/desklets
rm cpuload@kimse.zip

# Disk Space
wget https://cinnamon-spices.linuxmint.com/files/desklets/diskspace@schorschii.zip
unzip diskspace@schorschii.zip -d ~/.local/share/cinnamon/desklets
rm diskspace@schorschii.zip


# 3/ c) Extensions
# ----------------

# Transparent Panel
wget https://cinnamon-spices.linuxmint.com/files/extensions/transparent-panels@germanfr.zip
unzip transparent-panels@germanfr.zip -d ~/.local/share/cinnamon/extensions
rm transparent-panels@germanfr.zip

# Mouse Shake Zoom Extension
wget https://cinnamon-spices.linuxmint.com/files/extensions/mouse-shake-zoom@rcalixte.zip
unzip mouse-shake-zoom@rcalixte.zip -d ~/.local/share/cinnamon/extensions
rm mouse-shake-zoom@rcalixte.zip

# jeux

#flatpak install -y flathub net.hhoney.tinycrate
#flatpak install -y flathub io.github.tobagin.Draughts
#flatpak install -y flathub com.github.k4zmu2a.spacecadetpinball
#flatpak install -y flathub com.realm667.Wolfenstein_Blade_of_Agony
#flatpak install -y flathub org.srb2.SRB2Persona
#flatpak install -y flathub io.github.srb2.rphys
#flatpak install -y flathub net.sourceforge.lgames.LBreakoutHD
#flatpak install -y flathub org.gnome.Nibbles
#flatpak install -y flathub com.github._0negal.Viper
#flatpak install -y flathub org.sonic3air.Sonic3AIR
#flatpak install -y flathub io.github.noxworld_dev.OpenNox
#flatpak install -y flathub io.github.cxong.cdogs-sdl
#flatpak install -y flathub com.github.bvschaik.julius
#flatpak install -y flathub io.github.openhv.OpenHV
#flatpak install -y flathub tk.deat.Jazz2Resurrection
#flatpak install -y flathub com.endlessnetwork.aqueducts
#flatpak install -y flathub org.srb2.SRB2Kart-galaxy_azerty
#flatpak install -y flathub org.srb2.SRB2Kart-Saturn
#flatpak install -y flathub org.opensurge2d.OpenSurge
#flatpak install -y flathub com.donhopkins.Micropolis
#flatpak install -y flathub com.adilhanney.super_nonogram
#flatpak install -y flathub io.github.jotd666.gods-deluxe
#flatpak install -y flathub com.github.elth0r0.iqpuzzle
#flatpak install -y flathub org.flightgear.FlightGear
