
# Mintage

<details>
  <summary>A régler avant première release</summary>

  1. DATA/vivaldi.7z en deux parties à décompresser (réglages vivaldi)
  2. DATA/kodi.7z en trois parties à décompresser (réglages vivaldi)
  3. Script pour appliquer (ou restaurer) les customisations de thèmes et de réglages d'options utilisateurs sur une tierce session.
  4. Reformuler la documentation au propre, en s'inspirant par exemple de l'extrait suivant :

<details>
  <summary>Exemple</summary>
  Pour démarrer avec le script de personnalisation de Linux Mint, suivez ces étapes simples :

  1. Téléchargez le script sur votre machine Linux Mint.
  2. Rendez le script exécutable avec la commande : `chmod +x custom-linux-mint.sh`.
  3. Exécutez le script avec : `./custom-linux-mint.sh`.

</details>
</details>

## Présentation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
  <summary>Afficher/Masquer</summary>
  Ce script est conçu pour automatiser le processus de personnalisation de Linux Mint en installant une suite complète de logiciels open source. De manière simple, les utilisateurs peuvent transformer leur système Linux Mint en un environnement de travail puissant et personnalisé, idéal pour les développeurs, les créateurs de contenu, et les utilisateurs quotidiens.

### Fonctionnalités

- **Installation Automatique** : Déployez votre environnement personnalisé sans intervention manuelle.
- **Suite Complète** : Le script inclut des logiciels pour le développement, la bureautique, le multimédia, et plus encore.
- **Open Source** : Tous les logiciels installés sont open source, garantissant transparence et respect de la vie privée.
- **Thème Préconfiguré** : Profitez d'un thème sobre et fonctionnel, conçu pour une expérience utilisateur optimale.

### Liste de logiciel

  Une liste non exhaustive des logiciels inclus dans ce script :

- **Développement**: Codium, Git, Docker
- **Bureautique**: LibreOffice, Thunderbird
- **Multimédia**: GIMP, Kodi
- **Internet**: Vivaldi, FileZilla
- ...et beaucoup d'autres !

### Contributions

  Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

### License

  Distribué sous la licence GPLv3. Voir `LICENSE` pour plus d'informations.
</details>

___________________________________________________________________________

## Prérequis

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
  <summary>Afficher/Masquer</summary>
  Une install' fraîche de Linux Mint 22

  Choisir les miroirs de téléchargement pour les mises à jour (prenez les plus rapides)

  ```bash
  /usr/bin/software-properties-gtk
  ```

  Ensuite choisissez les drivers

  ```bash
  driver-manager
  ```

  Installez les drivers propriétaires et "Appliquer les changements", puis fermez.

  Faire les maj
  mintupdate
</details>

___________________________________________________________________________

## Installation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
  <summary>Afficher/Masquer</summary>
  1/ Ouvrir le dossier Calm-Linux faire un clic droit dans la fenêtre et "ouvrir dans un terminal"
  Dans le terminal entrer la commande :

  ```bash
  ./prerequis.sh
  ```

  Puis dans un nouveau terminal :

  ```bash
  ./install.sh
  ```

  puis faire un reboot
  Lancez vivaldi et thunderbird une première fois

  après reboot, lancer :

  ```bash
  ./after-reboot.sh
  ```

___________________________________________________________________________

  1) Si Dual-Boot seulement
  Dans un terminal :

  ```bash
  grub-customizer
  ```

  Dans Grub customizer mettez "calmgrub" comme theme avec l'icone de "+" dans l'onglet "apparence" (mettez calmgrub.tar.gz qui se trouve dans /racine du système) faites "appliquer" et enregistrez.

  1) Dans "Gestionnaire de mises à jour" allez dans "Edition/Préférences", allez dans l'onglet "Paquet" et cochez les maj cinnamon et flatpak, ensuite allez dans l'onglet "Automatisation" et cochez tout sauf le dernier "Retirer les noyaux obsolètes et leurs dépendances"

  4 OPTIONNEL)Si vous avez aussi Windows 10 installé, dans un terminal :

  ```bash
  gnome-disks
  ```

  Trouvez le disque où est installé Windows, puis chez la partition NTFS où il se trouve, sélectionnez-le puis cliquez
  sur la petite roue de paramètrage. Choisissez l'option "modifier les options de montage",
  Décochez "Réglages par défaut de la session" et décochez tout puis faîtes "Valider.

___________________________________________________________________________

  Dans fontbase cliquez sur "..." et dans
  Pour "Root Folder" choisissez le dossier "Local"

___________________________________________________________________________

  Lancer pcloud dans `~/Local/Ressources/apimages`

  Ouvrez Jdownloader et depuis fichier faites import
  cliquez sur telechargement et lancer l'import du fichier JD2-Dark-Theme.jd2backup
  à la fin d'install supprimez JD2-Dark-Theme.jd2backup

  Astuce désactiver l'accéleration matérielle de vivaldi (manuellement malheureusement)
  avec

  ```bash
  vivaldi --app="vivaldi://settings/system"
  ```

  pour les options de vivaldi à tester si ça bugge encore quand on récupère depuis :
  `~/.config/vivaldi/Default`
  et qu'on importe, attention, il faut virer les extensions et les mdp

___________________________________________________________________________

  (facultatif) Si vous allez fréquemment travailler sur la batterie de votre laptop vous pouvez installer tlp pour améliorer l'autonomie de votre batterie :
  `sudo nala install -y tlp tlp-rdw`

  (facultatif) Vous pouvez également installer preload pour précharger la ram avec des applications que vous utilisez fréquement :
  `sudo nala install -y preload`

  Sinon sur votre bueau 'clic droit' > personnaliser :
  décochez "ajustement automatique", puis cliquez en bas sur "Paramètre du bureau"
  Décochez le poste de travail et cochez le dossier personnel

  Lancez aussi l'applet du haut "radio ++" et choisissez "Download plugin at my own risk"

  ! Lancer xpad une première fois depuis le menu

  clic droit sur l'icone "préférences" dans l'onglet "au démarrage, cochez "Démarrer Xpad automatiquement après l'ouverture de session".

___________________________________________________________________________

  CODIUM

  activer le dico avec :
  `CTRL + Shift + P` et chercher :
  `Show Spell Checker Configuration Info`
  `Select the Language tab.`
  `Enable the language Globally or in just the Workspace.`

  Regarder Code Spell Checker pour configurer le dico aussi

  dans codium pour les font du terminal
  Dans la barre de menus supérieure, cliquez sur "Fichier" (File), puis sélectionnez "Préférences" (Preferences), et enfin "Paramètres" (Settings).

  Cela ouvrira le panneau des paramètres de VSCodium. Par défaut, il affiche les paramètres utilisateur, mais vous pouvez basculer vers les paramètres de l'espace de travail en cliquant sur l'icône en forme de fichier dans le coin supérieur droit du panneau.

  ajouter dans les options du settings.json

  ```json
    "terminal.integrated.fontFamily": "MesloLGS NF",
    "terminal.integrated.fontSize": 14,
    "terminal.integrated.fontWeightBold": "bold",
    "window.zoomLevel": 1,
    "terminal.explorerKind": "external",
    "terminal.external.linuxExec": "tilix"
    "markdownlint.config": {
      "MD033": false
    }
  ```

  ATTENTION : ne pas oublier de mettre une vergule à la ligne précedent le code que vous collez

  Créer UNRACCOURCI CLAVIER DANS CODIUM
  Raccourcis pour les options des raccourcis clavier de codium :
  `CTRL + K et CTRL + S`
  Fin DE RACCOURCI CLAVIER

___________________________________________________________________________

  LanguageTools pour LibreOffice

  Téléchargez l'extension via wget (dl direct)

  ```bash
  wget <https://languagetool.org/download/LanguageTool-stable.oxt>
  ```

  Dans LibreOffice allez dans "Outils/Gestionnaire des extensions..."
  Puis "Ajouter" et choisir "LanguageTool-stable.oxt",

  Dans LibreOffice aller dans "Outils/Options" (ou 'Alt+F12'), puis :
    "Paramètres linguistiques"
        - "Linguistique" et allez dans l'encart "Modules linguistiques disponibles", puis :
            - Décochez "Vérificateur orthographique Hunspell"
        - "Langues" :
            - Interface utilisateur = "Français (France)"
            - Paramètres locaux = "Français (France)"
            - Monnaie par défaut = "EUR € Français (France)"
            - Occidental = "Français (France)"
            - décochez "Asiatique"
</details>

___________________________________________________________________________

## Todo

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
  <summary>Afficher/Masquer</summary>

  1. Faire un script de customisation pour une nouvelle session
  2. Faire un script pour rétablir les customisations de thème après une upgrade hasardeuse
  3. Corriger le lien des MDP de Vivaldi, et ajouter les options corrigées de ~/.config/vivaldi à l'archive
  4. Supprimer du .hidden le dossier Games
  5. Refaire le lisez-moi
  6. Faire la liste de toutes les applications
  7. Faire une application simple pour changer sa version de Java

</details>

___________________________________________________________________________

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
