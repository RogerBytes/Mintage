#!/bin/sh

version="proton-exp-late-24-x86_64"
scriptname="${version}.sh"

# Tente d'ouvrir le script dans divers émulateurs de terminal
xterm -e "./${scriptname}" || \
gnome-terminal -- bash -c "./${scriptname}" || \
konsole -e "./${scriptname}" || \
xfce4-terminal -e "./${scriptname}" || \
lxterminal -e "./${scriptname}" || \
terminator -e "./${scriptname}" || \
"./${scriptname}"
