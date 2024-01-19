# Personnalisation de Kodi

Pour faire une clean install de Kodi et le fit de manière efficace.

## Installation de paquets supplémentaires

On installe les modules manquants à l'installation de base

```bash
sudo nala install -y kodi-peripheral-joystick kodi-pvr-iptvsimple kodi-audioencoder-flac kodi-audioencoder-lame kodi-audioencoder-vorbis kodi-audioencoder-wav kodi-imagedecoder-heif kodi-imagedecoder-raw kodi-inputstream-ffmpegdirect kodi-visualization-pictureit kodi-visualization-shadertoy kodi-visualization-shadertoy-data kodi-visualization-spectrum:amd64 kodi-visualization-waveform
```

## Réglages

Dans "System/Interface/Regional/language choisissez "French"
Ensuite au même endroit réglez "Disposition du clavier " en "French-Azerty" et "Format régional prédéfini" sur "France"
ensuite la région et mettre le niveau de paramètre (le truc avec une icône dentée ronde en bas à gauche) sur Expert
Ensuite allez dans "Habillage/ En obtenir plus" pour y ajouter/choisir `Unity`
Ensuite allez dans "Système/Paramètres de média/Général/"
cocher "Afficher les fichiers et dossiers cachés"

Ensuite allez dans "Système/Paramètres du système/Extensions"
cocher "Sources inconnues"

Ensuite allez dans "Système/Habillage/Général/choose colour"
Cochez "Dark Theme" et "Blue"

Ajouter  depuis "Gestion des fichiers" (sous menu de "Système" :
"Ajouter une source" puis ajouter :

- repo Catchup TV - Pour installer la tnt
<https://catch-up-tv-and-more.github.io/repo>

- repo GTKing - indispensable pour installer Duff You
<https://gtkingbuild.github.io>

- repo ROAR - repo of all repositories
<https://dexe.win/kodi>

- repo Vstream - Streaming FR
<https://kodi-vstream.github.io/repo/>

Dans "Système/Extensions/Installer d'un fichier Zip"

- dans "repo GTKing" installez :
repository/repository.GTKing-Matrix-1.9.zip

- dans "repo ROAR" installez :
repository/ repository.roooar-*.*.*.zip

- dans "repo Vstream" installez :
script.module.dnspython-*.*.*.zip
et
repository.vstream-*.*.*.zip

## Installer extensions depuis des dépôts

Ensuite dans "Système/Extensions/Installer d'un dépôt/

```bash
Repo of all Repositories
Catch-up TV & More's Release repository
G-Scribe Repository
JewRepo
SlyGuy Repository
Zach Morris Add-ons
```

### G-Scribe repository/Extensions vidéos

 et choisissez quels abonnements vous avez (sinon n'installez rien)

### JewRepo/Extensions vidéos

 et installez "Scrubs 2" (sreaming ultime mais anglophone)

### Repo GTKing MATRIX/Extensions vidéos

 et installez "Duff You" (Youtube)

### Catch-up TV & More's Release repository/Extensions vidéos

 et installez "Catch-up TV & More" (pour la tnt fr)

### Vstream repository/Extensions vidéos

 et installez "vStream"

### Kodi Add-on repository/

Apparence/Économiseurs d'écran/Google Earth (économiseurs d'écran avec des paysages, neutre)
Musique/Radio (web radios du monde entier)
ExtensionsProgrammes/IPTV Manager (requis pour les chaines tnt catchup)

Extensions vidéos/
Pluto TV (chaines iptv très nombreuses)

Menus contextuels/
Extras - permet de voir les bonus rangés dans un dossier "Extras" à côté du film

Météos/
Gismeteo - pour voir la météo

Paroles/
CU LRC Lyrics - pour voir la météo

Sous-titres/
OpenSubtitles.org - Pour trouver les sous-titres

### Vstream repository/ Extensions vidéos

 et installez "vStream"

### Zach Morris Add-ons/

A tester quand ce sera sur autre chise que linux!!"

## Réglage d'extension

### PVR IPTV Simple Client

Dans "Système/Extensions/Mes extensions/Client d'enregistrement pvr/"Activez "PVR IPTV Simple Client"

### Réglage de Catchup (TNT) et compagnie

Les mdp et login sont dans
`~/.kodi/userdata/addon_data/plugin.video.catchuptvandmore/settings.xml`
ligne 32 à 39

Exporter / importer les chaînes de catchup :
`~/.kodi/userdata/addon_data/service.iptv.manager/`
et dans
`~/.kodi/userdata/profiles/Utilisateur/addon_data/plugin.video.vstream/`
-> dans ce deuxième cas "Utilisateur" doit être le nom exact du profil en respectant les majuscules.

Exporter / importer les réglages de vstream :
`~/.kodi/userdata/addon_data/plugin.video.vstream/`
et dans
`~/.kodi/userdata/profiles/Utilisateur/addon_data/plugin.video.vstream/`
-> dans ce deuxième cas "Utilisateur" doit être le nom exact du profil en respectant les majuscules.

Internet Game Archive (de Zack)

Installer depuis le dépôt de Zack

Pour android ou autre tenter ce qui suit (pour le launcher de jeux internet archive game) :
pour avoir un truc qui dl les rom direct <https://github.com/zach-morris/plugin.program.iagl>

Installer le dépôt d'extensions "Kodi Libretro Buildbot Game Addons" et "IAGL Addon" depuis un zip :
le dl avec :

```bash
wget https://github.com/zach-morris/kodi_libretro_buildbot_game_addons/raw/main/repository.kodi_libretro_buildbot_game_addons.zip
wget https://github.com/zach-morris/repository.zachmorris/raw/master/repository.zachmorris/repository.zachmorris-1.0.4.zip
```

Ensuite "Système/Extensions/installer d'un fichier zip" et choisir le fichier dans votre home :
repository.kodi_libretro_buildbot_game_addons.zip
et
repository.zachmorris-1.0.4.zip
et installer depuis les dépôts

Ceci ne marche pas sur linux, je ne sais pas pourquoi, pas accessible depuis le repo)
ajoutez le ppa <https://launchpad.net/~team-xbmc/+archive/ubuntu/xbmc-nightly/+index?field.series_filter=jammy>

```bash
sudo add-apt-repository -y ppa:team-xbmc/xbmc-nightly
sudo nala update
sudo nala install -y kodi-game-libretro
```
