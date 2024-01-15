#!/bin/sh

find ~/.var/app/net.lutris.Lutris/data/lutris/runners/wine/ -maxdepth 1 -type d -execdir rename -v 'y/A-Z/a-z/' {} \;
