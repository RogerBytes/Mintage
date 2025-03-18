#!/bin/sh

version="SteamLinuxRuntime_soldier"
scriptname="${version}.sh"

# Tente d'ouvrir le script dans divers émulateurs de terminal
xterm -e "./${scriptname}" || \
gnome-terminal -- bash -c "./${scriptname}" || \
konsole -e "./${scriptname}" || \
xfce4-terminal -e "./${scriptname}" || \
lxterminal -e "./${scriptname}" || \
terminator -e "./${scriptname}" || \
"./${scriptname}"
