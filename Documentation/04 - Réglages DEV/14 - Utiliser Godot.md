# Utilisation de Godot

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Mes débuts sur Godot

[Documentation officielle de Godot](https://docs.godotengine.org/en/stable/index.html)

________________________________________________________

## Réglages de Godot

Juste mes réglages perso pour ma version modifiée de linux mint, notez bien à faire "Editors/Editors Settings.../FileSystem/Import/"

Editors/Editors Settings.../Interface/Theme
Preset : Custom
Icon and Font Color : Light
Base Color : 383838
Accent Color : 596eb5

Editors/Editors Settings.../FileSystem/External Programs/
Raster Image Editor : /usr/bin/gimp
Vector Image Editor : /usr/bin/inkscape
Audio Editor : /usr/bin/ardour #ou /usr/bin/audacity
3D Model Editor : /usr/bin/blender

Editors/Editors Settings.../FileSystem/Directories/
Autoscan Project Path : #par défaut#
Default Project Path : /home/#Votre nom d'utilisateur#/Local/Git

Editors/Editors Settings.../FileSystem/On Save/
Compress Binary Resources : #par défaut#
Safe Save on Backup the Rename : #par défaut#

Editors/Editors Settings.../FileSystem/File Dialog/
Show Hidden Files : #par défaut ou cochez l'option#
Display Mode : #par défaut ou List#
Thumbnail Size : #par défaut#

Editors/Editors Settings.../FileSystem/File Server/
Port : #par défaut#
Password : #par défaut ou mettez un mdp#

Editors/Editors Settings.../FileSystem/Import/
RPC Port : #par défaut#
RPC Server Uptime : #par défaut#
Blender 3 Path : /usr/bin/
FBX
FBX2glTF Path : /home/#Votre nom d'utilisateur#/.godot/FBX2glTF-linux-x86_64

Editors/Editors Settings.../Export/Android

Editors/Editors Settings.../Export/macOS

Editors/Editors Settings.../Export/Web

Editors/Editors Settings.../Export/Windows

Editors/Editors Settings.../Export/SSH

Editors/Editors Settings.../Dotnet/Editor

Editors/Editors Settings.../Dotnet/Build

________________________________________________________

## Comment compiler votre projet

### Installer une première fois les template d'export

Dans Godot, ouvrez un projet, et allez dans "Editor/Manage Export Templates"

Choisissez "Download from:" et mettez "Official Github Releases mirror" et cliquez sur "Download and Install"

Quand le téléchargement est fini le massage en rouge changera pour dire que les template sont installés (et ne sera plus en rouge), cliquez sur "close"

### Lancer l'Export

Ensuite allez dans "Project/Export..."
Cliquez sur le bouton "Add..." et choisissez votre "cible d’exportation :" Choisir "Web" ou autre.

### Export Web

Lorsque vous exportez vers du web, pensez à nommer le fichier en "index.html", comme ça il se lance par défaut.

En outre, une fonctionnalité (apportée par ES8) est requise pour faire tourner le jeu, il s'agit de "ArraySharedBuffer", qui n'est pas activable nativement si on ne peut pas configurer le serveur, par exemple sur github page.

Cependant il y a un script js qui permet de l'activer sur ce depôt : [coi-service](https://github.com/gzuidhof/coi-serviceworker).
Dans le répertoire où se trouve "index.html" faites

```bash
curl -O https://raw.githubusercontent.com/gzuidhof/coi-serviceworker/master/coi-serviceworker.js
```

Dans le fichier "index.html" ajoutez la ligne suivante au head

```html
<script src="./coi-serviceworker.js"></script>
```

### Publier son jeu HTML5 sur itch.io

Après avoir fait son export web, prendre tous les fichiers et les mettre dans un dossier "game", et compresser le dossier "game" en zip

Allez sur itchio et "créez un nouveau projet", ou directement sur [itch.io/game/new](https://itch.io/game/new)

Mettre un Titre
Catégorisation : Jeux
Type de projet : HTML

Cliquer sur "Mettre en ligne des fichiers" et choisir le fichier "game.zip"

Et SURTOUT : cocher "SharedArrayBuffer support — (Experimental) This may break parts of the page or your project. Only enable if you know you need it. Learn more"

et enfin, tout en bas, cliquer sur "Sauvegarder & voir la page"

________________________________________________________

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
