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
sudo nala install -y --assume-yes jackd2 && sudo nala install -y --assume-yes ardour

# Audacity
sudo nala install -y audacity

# Blender
sudo nala install -y blender

# Blueman (bluetooth)
sudo nala install -y blueman

# Caffeine
sudo nala install -y caffeine

# Cartes
sudo nala install -y gnome-maps

# Catfish
sudo nala install -y catfish

# Cheese
sudo nala install -y cheese

# ClamTK
sudo nala install -y clamav clamav-daemon && sudo systemctl stop clamav-freshclam && sudo freshclam && sudo systemctl start clamav-freshclam && sudo nala install -y clamtk-gnome

# Cmatrix
sudo nala install -y cmatrix

# Darktable
sudo nala install -y darktable

# Dconf
sudo nala install -y dconf-editor

# Devede NG
sudo nala install -y devede

# Fastboot - Drivers android
sudo nala install -y adb fastboot

# Ffmpeg
sudo nala install -y ffmpeg

# FileZilla
sudo nala install -y filezilla

# Flatpak
sudo nala install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo nala install -y gnome-software-plugin-flatpak

# Gaupol
sudo nala install -y gaupol

# Ghex
sudo nala install -y ghex

# Gimp
sudo nala install -y gimp gimp-help-fr

# Gnome todos (Endeavour)
sudo nala install -y gnome-todo

# Gparted
sudo nala install -y gparted

# Handbrake
sudo nala install -y handbrake

# Inkscape
sudo nala install -y inkscape

# Java 11 à chosiir avec "sudo update-alternatives --config java""
sudo nala install -y openjdk-11-jdk

# Java 17
sudo nala install -y openjdk-17-jdk

# Java 21
sudo nala install -y openjdk-21-jdk

# jq (outil json CLI)
sudo nala install -y jq

# KdeConnect
sudo nala install -y kdeconnect

# Kdenlive
sudo nala install -y kdenlive*

# KeePassXC
sudo nala install -y keepassxc

# Kodi
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

# Krita
sudo nala install -y krita

# Kronometer
sudo nala install -y kronometer

# Lmms
sudo nala install -y lmms

# Libre Office manquants
sudo nala install -y libreoffice-java-common libreoffice-base libreoffice-math

# Lutris
sudo nala install -y lutris
# ~/.local/share/icons/hicolor/128x128/apps -> chemin des icone des app lutris (vrai app pas launcher)

# MangoHud et Goverlay
sudo nala install -y goverlay mangohud

# Metadata cleaner
sudo nala install -y metadata-cleaner

# Numlock
sudo nala install -y numlockx

# Plank
sudo nala install -y plank

# Psensor (températures)
sudo nala install -y lm-sensors psensor

# rapsberry pi imager
sudo nala install -y rpi-imager

# Sauvegardes (deja dup, complément de timeshift)
sudo nala install -y deja-dup

# Scribus
sudo nala install -y scribus

# Sound Juicer
sudo nala install -y sound-juicer

# Steam
sudo nala install -y steam

# Synaptic
sudo nala install -y synaptic
sudo nala install -y apt-xapian-index
sudo update-apt-xapian-index -vf

# Tilix
sudo nala install -y tilix

# Transmission (sur LM vanilla mais se désinstalle sans que je comprenne pourquoi)
sudo nala install -y transmission-gtk

# Trimage
sudo nala install -y trimage

# Synapse
sudo nala install -y synapse

# Neovim
sudo nala install -y neovim

# Virt-Manager (gestionnaire VM) + KVM QEMU
sudo nala install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virt-manager virtiofsd samba
sudo usermod -aG libvirt $USER
mkdir -p ~/Local/VMs/iso
chmod 777 ~/Local/VMs/iso
mkdir -p ~/Local/VMs/Partage
chmod 777 ~/Local/VMs/Partage

# Xfburn
sudo nala install -y xfburn

# Xpad (remplace note "sticky")
sudo nala install -y xpad

# Installer les pack de langues
sudo nala install -y language-pack-en-base
sudo nala install -y language-pack-fr-base
sudo nala install -y language-pack-gnome-fr
sudo nala install -y language-pack-gnome-fr-base
sudo nala install -y language-selector-common
sudo nala install -y language-selector-gnome
