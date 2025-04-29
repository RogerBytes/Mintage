#!/bin/sh


#Index
#2/ Applications
#    2/ a) Installation depuis dépôts officiels

# ----------------------------------------------------------------------------

# ---------------------
# -- 2/ Applications --
# ---------------------


# 2/ a) Installation depuis dépôts officiels
# ------------------------------------------

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

# Devede NG
sudo nala install -y devede

# FileZilla
sudo nala install -y filezilla

# Floorp
sudo curl --fail -o /usr/share/keyrings/floorp-apt.asc https://ppa.floorp.app/setup/KEY.asc
sudo curl --fail -o /etc/apt/sources.list.d/floorp.list https://ppa.floorp.app/setup/floorp.list
sudo apt update
sudo nala install -y floorp

# Gaupol
sudo nala install -y gaupol

# Ghex
sudo nala install -y ghex

# Gimp
sudo nala install -y gimp gimp-help-fr

# Ghostwriter (lecteur editeur markdown léger)
sudo apt install -y ghostwriter

# Gnome todos
sudo nala install -y gnome-todo

# Gparted
sudo nala install -y gparted

# Grub2 Mint 2K (theme grand ecran)

# Gscan2Pdf
sudo nala install -y gscan2pdf tesseract-ocr-fra

# Handbrake
sudo nala install -y handbrake

# Inkscape
sudo nala install -y inkscape

# Java 11
sudo nala install -y openjdk-11-jdk

# jq (outil json CLI)
sudo nala install -y jq

# KdeConnect
sudo nala install -y kdeconnect

# Kdenlive
sudo nala install -y kdenlive*

# KeePass
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
sudo nala install -y libreoffice-java-common

# Lutris
sudo nala install -y lutris

# metadata cleaner
sudo nala install -y metadata-cleaner

# Numlock
sudo nala install -y numlockx

# Plank
sudo nala install -y plank

# PdfSam
sudo nala install -y pdfsam

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

# Stacer
sudo nala install -y stacer

# Tilix
sudo nala install -y tilix

# Transmission (sur LM vanilla mais se désinstalle sans que je comprenne pourquoi)
sudo nala install -y transmission-gtk

# Trimage
sudo nala install -y trimage

# Synapse
sudo nala install -y synapse

# Vim
sudo nala install -y vim

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
