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

# Audacity
sudo nala install -y audacity

# Blender
sudo nala install -y blender

# Blueman (bluetooth)
sudo nala install -y blueman

# Caffeine
sudo nala install -y caffeine

# Catfish
sudo nala install -y catfish

# Cheese
sudo nala install -y cheese

# ClamTK
sudo nala install -y clamav clamav-daemon && sudo systemctl stop clamav-freshclam && sudo freshclam && sudo systemctl start clamav-freshclam && sudo nala install -y clamtk-gnome

# Cmatrix
sudo nala install -y cmatrix

# Darktable
sudo nala install -y darktable

# Devede NG
sudo nala install -y devede

# FileZilla
sudo nala install -y filezilla

# Gaupol
sudo nala install -y gaupol

# Ghex
sudo nala install -y ghex

# Gimp
sudo nala install -y gimp gimp-help-fr

# Gnome todos
sudo nala install -y gnome-todo

# GnuCash
sudo nala install -y gnucash

# Gparted
sudo nala install -y gparted

# Gscan2Pdf
sudo nala install -y gscan2pdf tesseract-ocr-fra

# Handbrake
sudo nala install -y handbrake

# Inkscape
sudo nala install -y inkscape

# Kdenlive
sudo nala install -y kdenlive*

# KeePass
sudo nala install -y keepassxc

# Kodi
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


# Krita
sudo nala install -y krita

# Kronometer
sudo nala install -y kronometer

# Lmms
sudo nala install -y lmms

# metadata cleaner
sudo nala install -y metadata-cleaner

# Numlock :
sudo nala install -y numlockx

# OBS Studio
sudo nala install -y obs-studio

# OGMRip
sudo nala install -y ogmrip

# Plank
sudo nala install -y plank

# PdfSam
sudo nala install -y pdfsam

# rapsberry pi imager
sudo nala install -y rpi-imager

# Sauvegardes (deja dup, complément de timeshift)
sudo nala install -y deja-dup

# Scribus
sudo nala install -y scribus

# Sound juicer
sudo nala install -y sound-juicer

# Stacer
sudo nala install -y stacer

# Tilix
sudo nala install -y tilix

# Transmission
sudo nala install -y transmission-gtk

# Trimage
sudo nala install -y trimage

# Synapse
sudo nala install -y synapse

# Vim
sudo nala install -y vim

# VirtualBox
sudo nala install -y virtualbox
# et son thème sombre
sudo nala install -y qt5ct
mkdir -p ~/.config/qt5ct
touch ~/.config/qt5ct/qt5ct.conf
cat <<EOF > ~/.config/qt5ct/qt5ct.conf
[Appearance]
color_scheme_path=/usr/share/qt5ct/colors/darker.conf
custom_palette=true
icon_theme=Mint-Y
standard_dialogs=default
style=Breeze

[Fonts]
fixed=@Variant(\0\0\0@\0\0\0\x12\0M\0o\0n\0s\0p\0\x61\0\x63\0\x65@$\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
general=@Variant(\0\0\0@\0\0\0\f\0U\0\x62\0u\0n\0t\0u@$\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)

[Interface]
activate_item_on_single_click=1
buttonbox_layout=0
cursor_flash_time=1000
dialog_buttons_have_icons=1
double_click_interval=400
gui_effects=@Invalid()
keyboard_scheme=2
menus_have_icons=true
show_shortcuts_in_context_menus=true
stylesheets=@Invalid()
toolbutton_style=4
underline_shortcut=1
wheel_scroll_lines=3

[SettingsWindow]
geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\x64\0\0\0\x64\0\0\x3\x42\0\0\x2\xe4\0\0\0\x64\0\0\0\x80\0\0\x3\x42\0\0\x2\xe4\0\0\0\0\0\0\0\0\a\x80\0\0\0\x64\0\0\0\x80\0\0\x3\x42\0\0\x2\xe4)

[Troubleshooting]
force_raster_widgets=1
ignored_applications=@Invalid()
EOF

sudo sed -i 's/^Exec=.*$/Exec=env QT_QPA_PLATFORMTHEME=qt5ct virtualbox %U/' /usr/share/applications/virtualbox.desktop

# Xfburn
sudo nala install -y xfburn

# Xiphos (bible)
sudo nala install -y xiphos

# Xpad (remplace note "sticky")
sudo nala install -y xpad

# Installer les pack de langues
sudo nala install -y language-pack-en-base
sudo nala install -y language-pack-fr-base
sudo nala install -y language-pack-gnome-fr
sudo nala install -y language-pack-gnome-fr-base
sudo nala install -y language-selector-common
sudo nala install -y language-selector-gnome
