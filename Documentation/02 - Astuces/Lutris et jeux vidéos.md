# Lutris et jeux vidéo

Lutris permet de lancer des jeux et émulateurs, mais surtout il permet d'utiliser wine et proton pour lancer des jeux windows.
Lutris supporte tous vos comptes, Gog, Steam, Epic Game store etc.

## Réglages initiaux de Lutris

Il faut vous faut faire quelques réglages rapides.

### Chemin "Game Library"

Ouvrez Lutris, allez dans les "Préférences" (via le menu Burger) allez dans "Storage" dans `Game library` mettez le chemin :

```bash
~/Jeux/Lutris/WinePrefixes
```

Faites `entrée` après avoir collé, pour qu'il transforme le chemin correctement.

### Chemin "Dossier d'installation par défaut"

Allez aussi dans "Options Globales" et dans "Dossier d'installation des jeux" mettez :

```bash
~/Jeux/Lutris/Games
```

Faites `entrée` après avoir collé, pour qu'il transforme le chemin correctement.

### Interface

Allez aussi dans "Interface" et activez tout sauf :

- Masquer le texte sous les icônes
- Masquer les badges sur les icônes (Ctrl+p pour basculer)

### Ne pas oublier de sauvegarder

En haut à droite, maintenant que tout est réglé, n'oubliez pas de cliquer sur "Sauvegarder"

Vous n'avez plus d'autres réglages spécifiques à faire, ceci permet de mieux ranger ses fichiers de Wine/Proton.

## Avoir un wineprefix vierge

Si vous avez besoin d'un environnement wine vierge (un wineprefix), par exemple si vous avez un executable sans installeur, il est intéressant de pouvoir générer un vierge.

Rendez le script executable avec :

Lancez le script :

```bash
~/Jeux/Lutris/WinePrefixes/lutris-prefix.sh
```

Il créera un winprefix vierge dans `~/Jeux/Lutris/WinePrefixes/`.
Dans lutris vous devrez changer OBLIGATOIREMENT la version de wine pour terminer la configuration, c'est indispensable.

## Faire une archive de son jeux

Allez dans le dossier "Jeux" et faite la commande :

```sh
./export-wine-port.sh <nom de prefixe> "<Nom du jeu>"
```

par exemple :

```sh
./export-wine-port.sh cave-storys-secret-santa "Cave Story"
```

ou si vous voulez une tarball (archive nom compréssée)

```sh
./export-wine-port.sh cave-storys-secret-santa "Cave Story" tar
```

Ca génère l'archive dans votre dossier utilisateur.

## Informations système

C'est ce qui se trouve dans "Menu Burger/Préférences/Système", ça vous permet de comprendre à quoi ça fera référence si vous paramétrez des réglages sur des jeux via wine/proton.

### Documentation sur les informations système de Lutris

- **Vulkan support** : YES
  - Indique que le système prend en charge Vulkan, une API graphique 3D multiplateforme.

- **Esync support** : YES
  - Indique que le système prend en charge Esync, une fonctionnalité qui améliore les performances des jeux en réduisant la latence d'entrée/sortie.

- **Fsync support** : YES
  - Indique que le système prend en charge Fsync, une fonctionnalité qui améliore les performances des jeux en augmentant la synchronisation avec le disque.

- **Wine installed** : YES
  - Indique que Wine, une couche de compatibilité permettant d'exécuter des applications Windows sur des systèmes Unix, est installé sur le système.

- **Gamescope** : YES
  - Indique que Gamescope, un outil d'optimisation des performances pour les jeux, est disponible sur le système.

- **Mangohud** : YES
  - Indique que Mangohud, un outil d'affichage des performances en jeu, est disponible sur le système.

- **Gamemode** : YES
  - Indique que Gamemode, un outil d'optimisation des performances pour les jeux, est disponible sur le système.

- **Steam** : YES
  - Indique que Steam, une plateforme de distribution de jeux vidéo, est installée sur le système.

- **In Flatpak** : NO
  - Indique que Lutris n'est pas installé via Flatpak, un système de distribution d'applications pour Linux. C'est normal et préférable de ne pas utiliser la version flatpak.
