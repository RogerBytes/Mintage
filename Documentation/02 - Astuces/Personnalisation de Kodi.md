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

### Ajout manuel de repo fichers zip

Ensuite allez dans "Système/Paramètres du système/Extensions"
cocher "Sources inconnues" et en-dessous "mettre à jour les extensions officielles depuis" sur "N'importe quel dépôt"

Ensuite allez dans "Système/Habillage/Général/choose colour"
Cochez "Dark Theme" et "Blue"

Ensuite allez dans "Système/Habillage/Arrière-plan/"
Cochez "Activer l'arrière plan personnalisé" et dans "Chemin de l'arrière plan/single image" mettez  
Stockage externe/Pictures/Ipreda_christmas_tree.jpg

Ensuite allez dans "Système/Habillage/Extension/"
Cochez toutes les options.

Ajouter depuis "Gestion des fichiers" (sous menu de "Système" :
"Ajouter une source" puis ajouter :

- Zip Repo Catchup - Pour installer la tnt
  <https://catch-up-tv-and-more.github.io/repo>

- Zip Repo Dexe - repo of all repositories
  <https://dexe.win/kodi>

- Zip Repo Gtking - indispensable pour installer Duff You
  <https://gtkingbuild.github.io>

- Zip Repo Vstream - Streaming FR
  <https://kodi-vstream.github.io/repo/>

## Ajout de repo natifs depuis des repo fichers zip

Dans "Système/Extensions/Installer d'un fichier Zip"

- dans "Zip Repo Catchup" installez :
  Beta_Channel/repository.catchuptvandmore.beta-0.0.6.zip
- dans "Zip Repo Dexe" installez :
  repository/repository.roooar-1.0.1.zip
- dans "Zip Repo Gtking" installez :
  repository/repository.GTKing-Phoenix-Nexus-20.1.2.zip
- dans "Zip Repo Vstream" installez :
  script.module.dnspython-1.12.1.zip
  et
  repository.vstream-0.0.6.zip

## Installer des repo natifs depuis des repo natifs

Ensuite dans "Système/Extensions/Installer d'un dépôt/`Repo of all repositories`, installez :

- Dépôts d'extensions/JewRepo Repository
- Dépôts d'extensions/SlyGuy Repository
- Dépôts d'extensions/Zach Morris Add-ons

## Installer extensions depuis des repo natifs

Ensuite dans "Système/Extensions/Installer d'un dépôt/

- Repo GTKing MATRIX/Extensions vidéos  
  et installez "Duff You" (Youtube)

- JewRepo/Extensions vidéos  
  et installez "Scrubs 2" (sreaming ultime mais anglophone)
- Catch-up TV & More's Release repository/Extensions vidéos  
  et installez "Catch-up TV & More" (pour la tnt fr)
- Kodi Add-on repository/  
  Apparence/Économiseurs d'écran/Aerial  
  Apparence/Visualisation/Spectrum  
  Extensions Musique/Radio (web radios du monde entier)  
  Extensions Programmes/IPTV Manager (requis pour les chaines tnt catchup)  
  Extensions Vidéos/france.tv (pour la VOD)  
  Menus contextuels/Extras - permet de voir les bonus rangés dans un dossier "Extras" à côté du film  
  Météos/Gismeteo - pour voir la météo  
  Paroles/CU LRC Lyrics - pour voir la météo  
  Sous-titres/OpenSubtitles.com - Pour trouver les sous-titres
- SlyGuy repository/Extensions vidéos  
  et choisissez quels abonnements vous avez (sinon n'installez rien)  
  et dans Extensions Programmes/IPTV Merge  
  et dans Extensions Vidéos/Pluto Tv
- Vstream repository/Extensions vidéos  
  et installez "vStream"
- Zach Morris Add-ons  
  Extensions Jeux/Fournisseurs de jeux/Internet Archive Game Launcher
  Extensions Programmes/Retro BIOS Tool

## Réglages d'extensions

Allez dans `Système/Extensions/Mes extensions/`

### Apparence

- Économiseur d'écran/Aerial  
  Cliquer sur utiliser
- Visualisation/Spectrum  
  Cliquer sur utiliser

### Extensions Jeux

- Fournisseurs de jeux/Internet Archive Game Launcher  
  Cliquer sur Configurer et

1. Assistant Configuration/Lancer l'Assistant Configuration/  
    a. Pour l'account archive.org archive.org Mail & mdp : `issou4017@gpa.lu`  
    b. choisissez kodi retro player (pour retroarch il faut faire une edition de fichier manuellement)
    c. mettez auto pour l'instant
2. Paramètres Avancés/ activer "Copy Kodi Network (etc)"
3. Paramètres Avancés/Type de contenu de l'addon : games
4. Lanceurs Externes/System Type/Android aarch64
5. NE MARCHE PLUS DEPUIS A11 Fermez Kodi, il va nous falloir editer un fichier manuellement (sur android seulement) pour indiquer le chemin de retroarch.cfg

-> Ouvrez Material Files et allez ouvrir
`/storage/emulated/0/Android/data/org.xbmc.kodi/files/.kodi/userdata/addon_data/plugin.program.iagl/settings.xml`  
A la ligne 22, il y a :

```bash
<setting id="iagl_external_path_to_retroarch" default="true"/>
<setting id="iagl_external_path_to_retroarch_system_dir" default="true"/>
<setting id="iagl_external_path_to_retroarch_cfg" default="true"/>
```

Remplacez par (si vous utilisez retroarch aarch64)

```bash
<setting id="iagl_external_path_to_retroarch">/storage/emulated/0/RetroArch/</setting>
<setting id="iagl_external_path_to_retroarch_system_dir">/storage/emulated/0/RetroArch/system</setting>
id="iagl_external_path_to_retroarch_cfg">/storage/emulated/0/Download/retroarch.cfg</setting>
```

Et il faut copier retroarch.cfg dans le dossier download.

### Extensions Musique

- Radio : Configurer Langue : Français et ensuite revenez sur radio et choisissez Utiliser

### Extensions Programmes

- IPTV Merge : Configurer :
  1. Général : Setup IPTV Simple Client
  2. Lecture : Qualité de la vidéo : Best
  3. Ouvrir IPTV Merge et dans : EPGs -> "Add EPG" et choisir "Add On"

### Pour Batocera et Debian uniquement

Dans "Système/Extensions/Mes extensions/Client d'enregistrement pvr/"Activez "PVR IPTV Simple Client"

### Extensions Vidéos

#### Catchup TV & More

Configurer, puis :

- Qualité et contenu > Qualité vidéo : Maximale

- Comptes : Les mdp/comptes pour catchup tv

```json
    <setting id="mytf1.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="mytf1.password">Tru23IuKjebnsaK0$</setting>
    <setting id="6play.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="6play.password">Tru23IuKjebnsaK0$</setting>
    <setting id="abweb.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="abweb.password">Tru23IuKjnsaK0$</setting>
    <setting id="rmcbfmplay.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="rmcbfmplay.password">Tru23IuKjebnsaK0$</setting>
```

Pour info (si vous voulez changer les info manuellement dans le xml) Les mdp et login sont dans
`~/.kodi/userdata/addon_data/plugin.video.catchuptvandmore/settings.xml`
ligne 32 à 39

- Intégration TV > Sélectionner les chaînes TV à afficher

Lancer IPTV MERGE POUR METTRE LA LISTE A JOUR :  
Mes Extensions>Extensions Programmes>IPTV Merge>Ouvrir>Run Merge

#### Pluto TV

Configurer > Lecture > Qualité de la vidéo : Best

Configurer > Live TV & EPG > Setup IPTV Merge, mettez le pays, juste après les chaînes iptv seront ajoutées

#### Scrubs v2

Configurer > General Settings > Theme Grey  
Configurer > General Settings > Info Language > French  
Configurer > General Settings > Show Special Episodes/Saison 0  
Configurer > General Settings > Show Studio Info/Artwork

#### vStream

Faire l'importation des réglages.
Expliquer l'import export des favoris de vbstream

### Sous-titres

#### Open Subtitles.com

Utilisateur : OpenISSOU
mdp : `issou@gpa.lu`

### Météo

Gismeteo > Utiliser

## Réglages d'habillage

### Fenêtre d'accueil

Cocher "Afficher les informations météo"  
Cocher "Auto-hide the Sub-menu"

## Personnaliser le menu d'accueil

Via habillage>Définir les éléments à afficher sur le menu d'accueil.

Listes des catégories :

- Météo
- TV
- Stream
- Youtube
- Vidéos
- Radios
- Images
- Musique
- Jeux
- Lire le disque
- Système

### TV

Sous Menus :

- Guide TV - par défaut
- VOD France TV
- Sport en direct - vStream section sport

### Stream

vstream - me contenu-favori

sous menu rechercher (de vstream)
sous menu scrubs netflic

### Youtube

ajuter extension youtube

### Radios

changer pour mettre l'extension radio > mes radios

sous menu, rechercher de l'application radio

### Jeux

Ajouter extension jeu iagl
ajouter sous menu application androis (il faut passer par favori acceder)

## Réglages de fin

Désactiver l'acceleration matérielle dans les options système :  
Dans `Système/Lecteur/Vidéos` désactiver :

- Autoriser l'accelleration matérielle - MediaCodec (Surface)
- Autoriser l'accelleration matérielle - MediaCodec

Voilà il n'y a plus de réglages à faire.
