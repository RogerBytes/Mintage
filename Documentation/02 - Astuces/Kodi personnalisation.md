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
Ensuite allez dans "Habillage/ En obtenir plus" pour y ajouter/choisir `Aeon Nox: Silvo`
Ensuite allez dans "Système/Paramètres de média/Général/"
cocher "Afficher les fichiers et dossiers cachés"

### Ajout manuel de repo fichers zip local

```bash  
wget https://github.com/fivebanger/kodi_addons/raw/refs/heads/master/repository.fivebanger.zip  
```

Si sur une machine distante (genre box tv, je recommande d'utiliser LibreElec) envoyez le fichier par smb.  


### Ajout manuel de repo fichers zip

Ensuite allez dans "Système/Paramètres du système/Extensions"
cocher "Sources inconnues" et en-dessous "mettre à jour les extensions officielles depuis" sur "N'importe quel dépôt"

Si vous voulez changez le fond d'écran, c'est dans 
```bash  
~/.kodi/addons/skin.aeon.nox.silvo/extras/backgrounds
```
 
Ensuite allez dans "Système/Paramètres de l'habillage/Général/Choix de l'arrière-plan par défaut"
Cochez "Activer l'arrière plan personnalisé" et dans "Chemin de l'arrière plan/single image" mettez  
Stockage externe/Pictures/Ipreda_christmas_tree.jpg


Ensuite allez dans "Système/Paramètres de l'habillage/Fenêtre d'acceuil/"
Désactiver "Afficher le nom de l'arrière-plan"
Cocher "Masquer les éléments du menu principal en pressant la touche retour"

Ensuite allez dans "Système/Paramètres de l'habillage/Personnalisation/TV en direct"
Activer "Masquer les informations de cryptage"
Activer "Masquer les informations du tuner"
Activer "Masquer la puissance du signal"
Activer "Masquer les enregistrements"
Activer "Masquer la recherche"

Ensuite allez dans "Système/Paramètres de l'habillage/Général"
Cocher "Activer le défilement automatique de l'intrigue et des critiques"

Ensuite allez dans "Système/Paramètres de l'habillage/Avancé/Indicateur du statut vu"
Décocher "Non vu"

Ensuite allez dans "Système/Paramètres de l'habillage/Menu principal/Style de navigation du meni principal d'Aeon Nox"
Choisir "Fixé"



Ajouter depuis "Gestion des fichiers" (sous menu de "Système" :
"Ajouter une source" puis ajouter :

- Zip Repo Catchup - Pour installer la tnt
  <https://catch-up-tv-and-more.github.io/repo>

- Zip Repo Dexe - repo of all repositories
  <https://dexe.win/kodi>

- Zip Repo Vstream - Streaming FR
  <https://kodi-vstream.github.io/repo/>

### 

## Ajout de repo natifs depuis des repo fichers zip

Dans "Système/Extensions/Installer d'un fichier Zip"

- dans "Zip Repo Catchup/Beta_channel" installez :
  Beta_Channel/repository.catchuptvandmore.beta-0.0.6.zip
- dans "Zip Repo Dexe" installez :
  repository/repository.roooar-1.0.1.zip
- dans "Zip Repo Vstream" installez :
  script.module.dnspython-1.12.1.zip 
  et "repository.vstream-0.0.6.zip"
- dans "dossier personnel/ (dans backup ou le dossier où vous l'avez mis)" installez :  
  repository.fivebanger.zip 

## Installer des repo natifs depuis des repo natifs

Ensuite dans "Système/Extensions/Installer d'un dépôt/`dEXE's Addons Repository`/Dépôts d'extensions", installez : "Repo of all Repositories"

Ensuite dans "Système/Extensions/Installer d'un dépôt/`Repo of all repositories`Dépôts d'extensions", installez :

- Dépôts d'extensions/JewRepo Repository
- Dépôts d'extensions/SlyGuy Repository

## Installer extensions depuis des repo natifs

Ensuite dans "Système/Extensions/Installer d'un dépôt/

- dEXE's Addons Repository/  
Extensions jeux/Fournisseurs de jeux/Internet Archive Game Launcher  
Extensions jeux/Fournisseurs de jeux/Moonlight  
Extensions jeux/jeux autonomes/Rom Collection Browser  
Extensions programme/Retro BIOS Tool  
Services/Language Preference Manager  
Services/SponsorBlock
 
- JewRepo/Extensions vidéos  
  et installez "Scrubs 2" (sreaming ultime mais anglophone)
- Catch-up TV & More's Release repository/Extensions vidéos  
  et installez "Catch-up TV & More" (pour la tnt fr)
- Fivebanger's KODI ADD-ons/Extensions musique  
  et installez "Radiobrowser"
- Kodi Add-on repository/  
  Apparence/Économiseurs d'écran/Aerial  
  Apparence/Visualisation/Spectrum  
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

Télécharger la dernière version sur   
https://github.com/anxdpanic/plugin.video.youtube/releases  

Prendre la version "unofficial" :  
plugin.video.youtube-x.x.x+beta.x.unofficial.1.zip

Dans "Système/Extensions/Installer d'un fichier Zip"  
Choisissez "plugin.video.youtube-x.x.x+beta.x.unofficial.1.zip"

Extensions Vidéos/Youtube  a faire

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

- Radiobrowser : Region : Fr et désactiver "Use fanart background" puis "OK" et "Ouvrir"

### Extensions Programmes

- IPTV Merge : ouvrir/Setup IPTV Simple Client : faire le tour (ajouter epg ou program en choisissant add et addon puis mettre catchup puis refaire avec pluto tv)

- Language Preference Manager :  et mettre en fr

### Pour Batocera et Debian uniquement

Dans "Système/Extensions/Mes extensions/Client d'enregistrement pvr/"Activez "PVR IPTV Simple Client"

### Extensions Vidéos

#### Catchup TV & More

Configurer, puis :

- Qualité et contenu > Qualité vidéo : Maximale

- Comptes : Les mdp/comptes pour catchup tv  
- ~/.kodi/userdata/addon_data/plugin.video.catchuptvandmore  
- et ouvrez "settings.xml" ligne 32 à 39

```xml
    <setting id="tf1plus.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="tf1plus.password">Tru23IuKjebnsaK0$</setting>
    <setting id="6play.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="6play.password">Tru23IuKjebnsaK0$</setting>
    <setting id="abweb.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="abweb.password">Tru23IuKjnsaK0$</setting>
    <setting id="rmcbfmplay.login">magalie905669@4vzcg9.yarien.eu</setting>
    <setting id="rmcbfmplay.password">Tru23IuKjebnsaK0$</setting>
```


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
- Films
- Séries Tv
- Radios
- Jeux
- Système

### TV

Sous Menus :

- Guide TV - par défaut
- VOD France TV  
- VOD TNT
- Sport en direct - vStream section sport

### Stream

vstream - mes contenus-favori/Série
sous menu mes contenus-favori/films
sous menu rechercher (de vstream)
sous menu scrubs netflic

### Youtube

ajuter extension youtube

### Radios

changer pour mettre l'extension radio > mes radios

sous menu, rechercher de l'application radio une rechercher par station et une recherche par genre

### Jeux

Ajouter extension jeu iagl
ajouter sous menu application androis (il faut passer par favori acceder)

### Système  

Sous menus :  
alimentation
Lire le disque  
Ejecter le disque
Gestion des fichiers  


## Régler les vue des menu  

Système/Paramètres d'habillage/SilVO Extras/Choisir le style du boitier utilisé dans l

## Réglages de fin

Désactiver l'acceleration matérielle dans les options système :  
Dans `Système/Lecteur/Vidéos` désactiver :

- Autoriser l'accelleration matérielle - MediaCodec (Surface)
- Autoriser l'accelleration matérielle - MediaCodec

Le truc de telecommande.intelligente, c'est "CEC", sur ma tv c'est "anynet+ (hdmi-cec)"