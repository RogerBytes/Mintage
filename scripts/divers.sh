#!/bin/sh

#Index
#1/ Prérequis
#    1/ a) Divers
#    1/ b) Shell
#    1/ c) Applets

# Nala
sudo apt install -y nala expect curl wget
# puis changer les miroir de dl avec :
echo -e "1 2 3\nY" | sudo nala fetch

# Ardour
sudo nala install -y --assume-yes ardour
sudo nala install -y --assume-yes jackd2

# DVD support
sudo nala install -y libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg

# Zram
sudo nala install -y zram-config

# Drivers android
sudo nala install -y android-tools-adb android-tools-fastboot

# Dconf
sudo nala install -y dconf-editor


# 1/ b) Shell
# ------------

# Installer zsh
sudo nala install -y zsh
sudo chsh -s /bin/zsh

# Plugins Autojump
sudo nala install -y autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc && source ~/.zshrc

# Plugins zsh-syntax-highlighting
sudo nala install -y zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# Plugins zsh-autosuggestions
sudo nala install -y zsh-autosuggestions
echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Plugins powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
cp ./DATA/.p10k.zsh ~/

# comment voir quel shell j'utilise
#printf "My current shell - %s\n" "$SHELL"

# la commande normale pour changer le shell c'est :
#chsh -s $(which zsh)

# 1/ c) Applets
# -------------

# Cinnamenu
wget https://cinnamon-spices.linuxmint.com/files/applets/Cinnamenu@json.zip
unzip Cinnamenu@json.zip -d ~/.local/share/cinnamon/applets
rm Cinnamenu@json.zip

# Color Picker
wget https://cinnamon-spices.linuxmint.com/files/applets/color-picker@fmete.zip
unzip color-picker@fmete.zip -d ~/.local/share/cinnamon/applets
rm color-picker@fmete.zip

# Tiroir
wget https://cinnamon-spices.linuxmint.com/files/applets/show-hide-applets@mohammad-sn.zip
unzip show-hide-applets@mohammad-sn.zip -d ~/.local/share/cinnamon/applets
rm show-hide-applets@mohammad-sn.zip

# GPaste rechargé
wget https://cinnamon-spices.linuxmint.com/files/applets/gpaste-reloaded@feuerfuchs.eu.zip
unzip gpaste-reloaded@feuerfuchs.eu.zip -d ~/.local/share/cinnamon/applets
rm gpaste-reloaded@feuerfuchs.eu.zip

# Forcer à quitter
wget https://cinnamon-spices.linuxmint.com/files/applets/force-quit@cinnamon.org.zip
unzip force-quit@cinnamon.org.zip -d ~/.local/share/cinnamon/applets
rm force-quit@cinnamon.org.zip

# Minuterie
wget https://cinnamon-spices.linuxmint.com/files/applets/timer@Severga.zip
unzip timer@Severga.zip -d ~/.local/share/cinnamon/applets
rm timer@Severga.zip

# Radio++
wget https://cinnamon-spices.linuxmint.com/files/applets/radio@driglu4it.zip
unzip radio@driglu4it.zip -d ~/.local/share/cinnamon/applets
rm radio@driglu4it.zip

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

# Tight Network Usage Indicator
wget https://cinnamon-spices.linuxmint.com/files/applets/ifstat@tagadan.zip
unzip ifstat@tagadan.zip -d ~/.local/share/cinnamon/applets
rm ifstat@tagadan.zip

# Weather
wget https://cinnamon-spices.linuxmint.com/files/applets/weather@mockturtl.zip
unzip weather@mockturtl.zip -d ~/.local/share/cinnamon/applets
rm weather@mockturtl.zip

# Dépendances de Tight Network Indicator
sudo nala install -y ifstat

# Dépendances de screenshot
sudo nala install -y ffmpeg xdotool x11-utils

# Dépendances de color picker
sudo nala install -y xclip python3-xlib

# Dépendances de gpaste rechargé
sudo nala install -y gpaste gir1.2-gpaste-1.0

# Dépendances de radio++
sudo nala install -y mpv


# 1/ d) Desklet
# -------------

# CPU Load
wget https://cinnamon-spices.linuxmint.com/files/desklets/cpuload@kimse.zip
unzip cpuload@kimse.zip -d ~/.local/share/cinnamon/desklets
rm cpuload@kimse.zip

# Disk Space
wget https://cinnamon-spices.linuxmint.com/files/desklets/diskspace@schorschii.zip
unzip diskspace@schorschii.zip -d ~/.local/share/cinnamon/desklets
rm diskspace@schorschii.zip


# 1/ e) Extensions
# ----------------

# Transparent Panel
wget https://cinnamon-spices.linuxmint.com/files/extensions/transparent-panels@germanfr.zip
unzip transparent-panels@germanfr.zip -d ~/.local/share/cinnamon/extensions
rm transparent-panels@germanfr.zip

# Mouse Shake Zoom Extension
wget https://cinnamon-spices.linuxmint.com/files/extensions/mouse-shake-zoom@rcalixte.zip
unzip mouse-shake-zoom@rcalixte.zip -d ~/.local/share/cinnamon/extensions
rm mouse-shake-zoom@rcalixte.zip