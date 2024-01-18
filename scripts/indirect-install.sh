#!/bin/sh

# en attente
# Open Snitch NON INSTALLE EN ATTENTE DE VERSION PLUS STABLE
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

# Ciano Media Converter
flatpak install -y flathub com.github.robertsanseries.ciano

# Jdownloader
flatpak install -y flathub org.jdownloader.JDownloader

# Lutris
flatpak install -y flathub net.lutris.Lutris

# Mousai (shazam alternative)
flatpak install -y flathub io.github.seadve.Mousai

# ProtonUp
flatpak install -y flathub net.davidotek.pupgui2

# SweetHome 3D
flatpak install -y flathub com.sweethome3d.Sweethome3d

# VideoDownloader
flatpak install flathub -y com.github.unrud.VideoDownloader

# 2/ c) Installation depuis un paquet DEB
# ---------------------------------------

# AntimicroX
wget https://github.com/AntiMicroX/antimicrox/releases/download/3.3.2/antimicrox-3.3.2-ubuntu-22.04-x86_64.deb && sudo nala install -y ./antimicrox*.deb && rm antimicrox-3.3.2-ubuntu-22.04-x86_64.deb

# Ferdium
wget https://github.com/ferdium/ferdium-app/releases/download/v6.2.2/Ferdium-linux-6.2.2-amd64.deb && sudo nala install -y ./Ferdium*.deb && rm Ferdium-linux-6.2.2-amd64.deb

# Foliate
wget https://github.com/johnfactotum/foliate/releases/download/2.6.4/com.github.johnfactotum.foliate_2.6.4_all.deb && sudo nala install -y ./com.github.johnfactotum.foliate_2.6.4_all.deb && rm com.github.johnfactotum.foliate_2.6.4_all.deb

# FreeTube
wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.19.0-beta/freetube_0.19.0_amd64.deb && sudo nala install -y ./*amd64.deb && rm *amd64.deb

# RustDesk (pour remplacer teamviewer)
wget $(curl -s https://api.github.com/repos/rustdesk/rustdesk/releases/latest | grep "browser_download_url.*x86_64.deb" | cut -d '"' -f 4)
sudo dpkg -i rustdesk-*-x86_64.deb
rm rustdesk-*-x86_64.deb

# vivaldi
wget https://downloads.vivaldi.com/stable/vivaldi-stable_5.6.2867.40-1_amd64.deb && sudo nala install -y ./vivaldi-stable_5.6.2867.40-1_amd64.deb && rm vivaldi-stable_5.6.2867.40-1_amd64.deb

# VSCodium
latest_url=$(curl -sL -w '%{url_effective}\n' https://github.com/VSCodium/vscodium/releases/latest -o /dev/null)
download_url="${latest_url/tag/download}/codium_${latest_url##*/}_amd64.deb"
wget $download_url
sudo nala install -y ./*amd64.deb
rm *amd64.deb
# Les extensions de VSCodium
codium --install-extension PKief.material-product-icons
codium --install-extension aaron-bond.better-comments
codium --install-extension captain-stack.captain-stack
codium --install-extension christian-kohler.path-intellisense
codium --install-extension Codeium.codeium
codium --install-extension donjayamanne.python-environment-manager
codium --install-extension eamodio.gitlens
codium --install-extension ecmel.vscode-html-css
codium --install-extension esbenp.prettier-vscode
codium --install-extension formulahendry.auto-close-tag
codium --install-extension formulahendry.auto-complete-tag
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension Gruntfuggly.todo-tree
codium --install-extension jaspernorth.vscode-pigments
codium --install-extension jock.svg
codium --install-extension KevinRose.vsc-python-indent
codium --install-extension kisstkondoros.vscode-gutter-preview
codium --install-extension leodevbro.blockman
codium --install-extension magicstack.MagicPython
codium --install-extension MohammadBaqer.better-folding
codium --install-extension MS-CEINTL.vscode-language-pack-fr
codium --install-extension ms-python.python
codium --install-extension ms-vscode.live-server
codium --install-extension oderwat.indent-rainbow
codium --install-extension PKief.material-icon-theme
codium --install-extension pranaygp.vscode-css-peek
codium --install-extension redhat.vscode-xml
codium --install-extension rid9.datetime
codium --install-extension shardulm94.trailing-spaces
codium --install-extension shellscape.shellscape-brackets
codium --install-extension tomoki1207.pdf
codium --install-extension yzane.markdown-pdf
codium --install-extension Angular.ng-template
codium --install-extension yzhang.markdown-all-in-one
codium --install-extension anteprimorac.html-end-tag-labels
codium --install-extension DavidAnson.vscode-markdownlint
codium --install-extension Josee9988.minifyall
codium --install-extension mongodb.mongodb-vscode
codium --install-extension bmewburn.vscode-intelephense-client
codium --install-extension zobo.php-intellisense
codium --install-extension MehediDracula.php-namespace-resolver
codium --install-extension devsense.phptools-vscode
codium --install-extension mtxr.sqltools
codium --install-extension syler.sass-indented
codium --install-extension joelday.docthis
codium --install-extension johnpapa.Angular2
codium --install-extension mrmlnc.vscode-apache
codium --install-extension adpyke.codesnap
codium --install-extension ms-azuretools.vscode-docker
codium --install-extension hediet.vscode-drawio
codium --install-extension usernamehw.errorlens
codium --install-extension Tobermory.es6-string-html
codium --install-extension mhutchie.git-graph
codium --install-extension mtxr.sqltools-driver-mysql
codium --install-extension rangav.vscode-thunder-client
codium --install-extension johnbillion.vscode-wordpress-hooks
codium --install-extension mblode.twig-language-2
codium --install-extension neilbrayfield.php-docblocker
codium --install-extension ritwickdey.LiveServer
codium --install-extension shd101wyy.markdown-preview-enhanced
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension streetsidesoftware.code-spell-checker-french
codium --install-extension gitpod.gitpod-theme


# 2/ d) Installation avec un PPA
# ------------------------------

# Avidemux
sudo nala install -y software-properties-common apt-transport-https &&

sudo add-apt-repository -y ppa:xtradeb/apps
sudo nala update
sudo nala install -y avidemux-qt avidemux-cli

# Brightness Controller (gère le contraste/couleur des moniteurs)
sudo add-apt-repository -y ppa:apandada1/brightness-controller && sudo nala update && sudo nala install -y brightness-controller

# Cozy Audiobook
sudo add-apt-repository -y ppa:cozy-team/cozy && sudo nala update && sudo nala install -y cozy

# gCDEmu
sudo add-apt-repository -y ppa:cdemu/ppa && sudo nala update && sudo nala install -y gcdemu

# Grub Customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer && sudo nala update && sudo nala install -y grub-customizer

# Haguichi (et hamachi avec)
sudo add-apt-repository -y ppa:ztefn/haguichi-stable && sudo nala update && sudo nala install -y haguichi && wget https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb && sudo nala install -y ./logmein-hamachi_2.1.0.203-1_amd64.deb && rm logmein-hamachi_2.1.0.203-1_amd64.deb

# Mangohud
sudo add-apt-repository -y ppa:oibaf/graphics-drivers && sudo nala update && sudo nala install -y mangohud

# YACReader
echo 'deb http://download.opensuse.org/repositories/home:/selmf/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:selmf.list && curl -fsSL https://download.opensuse.org/repositories/home:selmf/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_selmf.gpg > /dev/null && sudo nala update && sudo nala install -y yacreader

# 2/ e) Installation paquets linux tar.gz
# ---------------------------------------

# Curseur La Capitaine GARDER capitaine-cursors-r4.tar.gz
sudo nala install -y x11-apps
tar -zxvf ./DATA/App-ressource/capitaine-cursors-r4.tar.gz
sudo cp -pr ./capitaine-cursors ~/.icons/capitaine-cursors
sudo cp -pr ./capitaine-cursors /usr/share/icons/capitaine-cursors
sudo gtk-update-icon-cache /usr/share/icons/capitaine-cursors/
sudo gtk-update-icon-cache ~/.icons/capitaine-cursors/
rm -r capitaine-cursors

# Flash Player Ruffle
wget https://github.com/ruffle-rs/ruffle/releases/download/nightly-2022-12-07/ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && tar -zxvf ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && rm LICENSE.md README.md ruffle-nightly-2022_12_07-linux-x86_64.tar.gz && sudo mv ruffle /bin && sudo touch /usr/share/applications/Flash\ Player.desktop && sudo echo "[Desktop Entry]" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Version=1.0" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Type=Application" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Name=Flash Player" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Comment=Lecteur Flash ruffle" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Exec=/bin/ruffle" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Icon=flash-player-properties" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Path=" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Terminal=false" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "StartupNotify=true" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo echo "Name[fr_FR]=Flash Player" | sudo tee -a /usr/share/applications/Flash\ Player.desktop && sudo chmod +x /usr/share/applications/Flash\ Player.desktop && xdg-mime default Flash\ Player.desktop application/vnd.adobe.flash.movie

# Java "Oracle"
# pour jre (les liens sont sur https://www.oracle.com/java/technologies/downloads/ ) ATTENTION GARDER LE TAR.GZ modifier le script après
sudo mkdir -p /usr/lib/jvm && sudo tar zxvf ./DATA/App-ressource/jre-8u351-linux-x64.tar.gz -C /usr/lib/jvm && sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jre1.8.0_351/bin/java" 1 && sudo update-alternatives --set java /usr/lib/jvm/jre1.8.0_351/bin/java && sudo touch /usr/share/applications/Java.desktop && sudo tee -a  /usr/share/applications/Java.desktop > /dev/null <<EOT
[Desktop Entry]
Exec=/usr/lib/jvm/jre1.8.0_351/bin/javaws
Name=Java
Icon=java
Type=Application
EOT
sudo chmod +x /usr/share/applications/Java.desktop ; sudo chmod +x /usr/lib/jvm/jre1.8.0_351/bin/javaws && xdg-mime default Java.desktop application/x-java-jnlp-file


# 2/ f) Installation de appimage
# ------------------------------

# Fontbase
wget https://releases.fontba.se/linux/FontBase-2.18.1.AppImage && sudo mv FontBase-2.18.1.AppImage /bin && sudo touch /usr/share/applications/Fontbase.desktop && sudo tee -a /usr/share/applications/Fontbase.desktop > /dev/null <<EOT
[Desktop Entry]
Exec=/bin/FontBase-2.18.1.AppImage
Icon=fonts
Name=Fontbase
Type=Application
EOT
sudo chmod +x /usr/share/applications/Fontbase.desktop ; sudo chmod +x /bin/FontBase-2.18.1.AppImage

# JoalDesktop
wget https://github.com/anthonyraymond/joal-desktop/releases/download/v2.0.16/JoalDesktop-2.0.16-linux-x86_64.AppImage && sudo mv JoalDesktop-2.0.16-linux-x86_64.AppImage /bin && sudo touch /usr/share/applications/Joal.desktop && sudo tee -a  /usr/share/applications/Joal.desktop > /dev/null <<EOT
[Desktop Entry]
Exec=/bin/JoalDesktop-2.0.16-linux-x86_64.AppImage
Name=Joal
Icon=appgrid
Type=Application
EOT
sudo chmod +x /usr/share/applications/Joal.desktop ; sudo chmod +x /bin/JoalDesktop-2.0.16-linux-x86_64.AppImage

# pCloud
mkdir  ~/Local/
mkdir  ~/Local/Ressources/
mkdir  ~/Local/Ressources/apimages/
cp ./DATA/App-ressource/pcloud ~/Local/Ressources/apimages/
sudo chmod +x ~/Local/Ressources/apimages/pcloud

# 2/ g) Purge et nettoyage PPA
# ----------------------------

# Formateur de clé USB -> Gparted
sudo apt purge -y mintstick

# Sticky (note) -> xpad
sudo apt purge -y sticky

# Suppresion PPA Avidemux
sudo add-apt-repository --remove -y ppa:xtradeb/apps

# Suppresion PPA brightness-controller
sudo add-apt-repository --remove -y ppa:apandada1/brightness-controller

# Suppresion PPA Mangohud
sudo add-apt-repository --remove -y ppa:oibaf/graphics-drivers

# Suppresion PPA gCdemu
sudo add-apt-repository --remove -y ppa:cdemu/ppa

# Suppresion PPA Grub Customizer
sudo add-apt-repository --remove -y ppa:danielrichter2007/grub-customizer

# Suppresion PPA Haguichi
sudo add-apt-repository --remove -y ppa:ztefn/haguichi-stable
sudo nala update


# 2/ h) Compilations
# ------------------

# Gamemode (feral game mode)
sudo apt install -y meson dbus-user-session ninja-build git cmake libsystemd-dev libdbus-1-dev
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
meson setup --prefix=/usr build
ninja -C build
sudo ninja -C build install
cd ../
rm -rf gamemode
