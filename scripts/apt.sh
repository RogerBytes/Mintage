#!/bin/bash

#Index
#2/ Applications
#    2/ a) Installation depuis dépôts officiels

# ----------------------------------------------------------------------------

# ---------------------
# -- 2/ Applications --
# ---------------------


# 2/ a) Installation depuis dépôts officiels
# ------------------------------------------

# Ardour
PKG=ardour
dpkg -s "$PKG" &>/dev/null || sudo nala install -y --assume-yes "$PKG"

# Audacity
PKG=audacity
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Blender
PKG=blender
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Blueman (bluetooth)
PKG=blueman
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Caffeine
PKG=caffeine
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Cartes
PKG=gnome-maps
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Catfish
PKG=catfish
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Cheese
PKG=cheese
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# ClamTK
PKG=clamav
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y clamav clamav-daemon && sudo systemctl stop clamav-freshclam && sudo freshclam && sudo systemctl start clamav-freshclam && sudo nala install -y clamtk-gnome
}

# Darktable
PKG=darktable
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Dconf
PKG=dconf-editor
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Devede NG
PKG=devede
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Fastboot - Drivers android
PKG=fastboot
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Ffmpeg
PKG=ffmpeg
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# gFTP
PKG=gftp
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Flatpak
PKG=flatpak
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y flatpak
  sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  sudo nala install -y gnome-software-plugin-flatpak
}

# Gaupol
PKG=gaupol
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Ghex
PKG=ghex
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Gimp
PKG=gimp
dpkg -s "$PKG" &>/dev/null || sudo nala install -y gimp gimp-help-fr

# Gnome todos (Endeavour)
PKG=gnome-todo
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Gparted
PKG=gparted
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Handbrake
PKG=handbrake
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Inkscape
PKG=inkscape
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Java 11 à chosiir avec "sudo update-alternatives --config java""
PKG=openjdk-11-jdk
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Java 17
PKG=openjdk-17-jdk
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Java 21
PKG=openjdk-21-jdk
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# jq (outil json CLI)
PKG=jq
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# KdeConnect
PKG=kdeconnect
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# KeePassXC
PKG=keepassxc
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Kitty (terminal)
PKG=kitty
dpkg -s "$PKG" &>/dev/null || sudo nala install -y kitty fonts-firacode

# Kodi
PKG=kodi
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y kodi
  sudo nala install -y kodi-peripheral-joystick
  sudo nala install -y kodi-pvr-iptvsimple
  sudo nala install -y kodi-audioencoder-flac
  sudo nala install -y kodi-audioencoder-lame
  sudo nala install -y kodi-audioencoder-vorbis
  sudo nala install -y kodi-audioencoder-wav
  sudo nala install -y kodi-imagedecoder-heif
  sudo nala install -y kodi-imagedecoder-raw
  sudo nala install -y kodi-inputstream-ffmpegdirect
  sudo nala install -y kodi-visualization-pictureit
  sudo nala install -y kodi-visualization-shadertoy
  sudo nala install -y kodi-visualization-shadertoy-data
  sudo nala install -y kodi-visualization-spectrum:amd64
  sudo nala install -y kodi-visualization-waveform
}

# Krita
PKG=krita
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Kronometer
PKG=kronometer
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Lmms
PKG=lmms
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Libre Office manquants
PKG=libreoffice-java-common
dpkg -s "$PKG" &>/dev/null || sudo nala install -y libreoffice-java-common libreoffice-base libreoffice-math

# MangoHud et Goverlay
PKG=goverlay
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG" mangohud

# Metadata cleaner
PKG=metadata-cleaner
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Numlock
PKG=numlockx
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# PavuControl (Contrôle du volume PulseAudio, compatible pipewire)
PKG=pavucontrol
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Plank
PKG=plank
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Psensor (températures)
PKG=lm-sensors
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG" psensor

# Sauvegardes (deja dup, complément de timeshift)
PKG=deja-dup
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Scribus
PKG=scribus
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Sound Juicer
PKG=sound-juicer
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Steam
PKG=steam
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Synaptic
PKG=synaptic
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y synaptic
  sudo nala install -y apt-xapian-index
  sudo update-apt-xapian-index -vf
}

# Tmux (multiplexer de terminal)
PKG=tmux
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Transmission (sur LM vanilla mais se désinstalle sans que je comprenne pourquoi)
PKG=transmission-gtk
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Trimage
PKG=trimage
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Synapse
PKG=synapse
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Neovim
PKG=neovim
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Virt-Manager (gestionnaire VM) + KVM QEMU
PKG=virt-manager
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virt-manager virtiofsd samba
  sudo usermod -aG libvirt $USER
  mkdir -p ~/Local/VMs/iso
  chmod 777 ~/Local/VMs/iso
  mkdir -p ~/Local/VMs/Partage
  chmod 777 ~/Local/VMs/Partage
}

# Xfburn
PKG=xfburn
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Xpad (remplace note "sticky")
PKG=xpad
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Installer les pack de langues
PKG=language-pack-gnome-fr
dpkg -s "$PKG" &>/dev/null || { 
  sudo nala install -y language-pack-en-base
  sudo nala install -y language-pack-fr-base
  sudo nala install -y language-pack-gnome-fr
  sudo nala install -y language-pack-gnome-fr-base
  sudo nala install -y language-selector-common
  sudo nala install -y language-selector-gnome
}

