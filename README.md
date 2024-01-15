
# Mintage

___________________________________________________________________________

Calm Os : Une personnalisation semi automatique de linux mint

Prérequis :
Une install' fraîche de Linux Mint 22

Choisir les miroirs de téléchargement pour les mises à jour (prenez les plus rapides)
/usr/bin/software-properties-gtk

Ensuite choisissez les drivers
driver-manager
Installez les drivers propriétaires et "Appliquer les changements", puis fermez.

Faire les maj
mintupdate

___________________________________________________________________________

Installation :

1/ Ouvrir le dossier Calm-Linux faire un clic droit dans la fenêtre et "ouvrir dans un terminal"
Dans le terminal entrer la commande :
./prerequis.sh

Puis dans un nouveau terminal :
./install.sh

puis faire un reboot
Lancez vivaldi et thunderbird une première fois

après reboot, lancer :
./after-reboot.sh

------------------------------------------------------------------------

1) Si Dual-Boot seulement
Dans un terminal :
grub-customizer
Dans Grub customizer mettez "calmgrub" comme theme avec l'icone de "+" dans l'onglet "apparence" (mettez calmgrub.tar.gz qui se trouve dans /racine du système) faites "appliquer" et enregistrez.

1) Dans "Gestionnaire de mises à jour" allez dans "Edition/Préférences", allez dans l'onglet "Paquet" et cochez les maj cinnamon et flatpak, ensuite allez dans l'onglet "Automatisation" et cochez tout sauf le dernier "Retirer les noyaux obsolètes et leurs dépendances"

4 OPTIONNEL)Si vous avez aussi Windows 10 installé, dans un terminal :
gnome-disks

Trouvez le disque où est installé Windows, puis chez la partition NTFS où il se trouve, sélectionnez-le puis cliquez
sur la petite roue de paramètrage. Choisissez l'option "modifier les options de montage",
Décochez "Réglages par défaut de la session" et décochez tout puis faîtes "Valider.

-----------------------------------------------
Dans fontbase cliquez sur "..." et dans
Pour "Root Folder" choisissez le dossier "Local"

-----------------------------------------------

Lancer pcloud dans ~/Local/Ressources/apimages

Ouvrez Jdownloader et depuis fichier faites import
cliquez sur telechargement et lancer l'import du fichier JD2-Dark-Theme.jd2backup
à la fin d'install supprimez JD2-Dark-Theme.jd2backup

Astuce désactiver l'accéleration matérielle de vivaldi (manuellement malheureusement)
avec
vivaldi --app="vivaldi://settings/system"

pour les options de vivaldi à tester si ça bugge encore quand on récupère depuis :
~/.config/vivaldi/Default
et qu'on importe, attention, il faut virer les extensions et les mdp

____________________________________________________________

(facultatif) Si vous allez fréquemment travailler sur la batterie de votre laptop vous pouvez installer tlp pour améliorer l'autonomie de votre batterie :
sudo nala install -y tlp tlp-rdw

(facultatif) Vous pouvez également installer preload pour précharger la ram avec des applications que vous utilisez fréquement :
sudo nala install -y preload

Sinon sur votre bueau 'clic droit' > personnaliser :
décochez "ajustement automatique", puis cliquez en bas sur "Paramètre du bureau"
Décochez le poste de travail et cochez le dossier personnel

Lancez aussi l'applet du haut "radio ++" et choisissez "Download plugin at my own risk"

# Lancer xpad une première fois depuis le menu

clic droit sur l'icone "préférences" dans l'onglet "au démarrage, cochez "Démarrer Xpad automatiquement après l'ouverture de séssion".

____________________________________________________________

CODIUM

activer le dico avec :
CTRL + Shift + P et chercher :
Show Spell Checker Configuration Info
Select the Language tab.
Enable the language Globally or in just the Workspace.

Regarder Code Spell Checker pour configurer le dico aussi

dans codium pour les font du terminal
Dans la barre de menus supérieure, cliquez sur "Fichier" (File), puis sélectionnez "Préférences" (Preferences), et enfin "Paramètres" (Settings).

Cela ouvrira le panneau des paramètres de VSCodium. Par défaut, il affiche les paramètres utilisateur, mais vous pouvez basculer vers les paramètres de l'espace de travail en cliquant sur l'icône en forme de fichier dans le coin supérieur droit du panneau.

ajouter dans les options du settings.json
    "terminal.integrated.fontFamily": "MesloLGS NF",
    "terminal.integrated.fontSize": 14,
    "terminal.integrated.fontWeightBold": "bold",
    "window.zoomLevel": 1,
    "terminal.explorerKind": "external",
    "terminal.external.linuxExec": "tilix"

ATTENTION : ne pas oublier de mettre une vergule à la ligne précedent le code que vous collez

Crer UNRACCOURCI CLAVIER DANS CODIUM
Raccourcis pour les options des raccourcis clavier de codium :
CTRL + K et CTRL + S

toggle.terminal
cliquez sur le + et maintenir :
CTRL + SHIFT + è
puis entrée pour confirmer
Fin DE RACCOURCI CLAVIER

____________________________________________________________

LanguageTools pour LibreOffice

Téléchargez l'extension via wget (dl direct)
wget <https://languagetool.org/download/LanguageTool-stable.oxt>

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

___________________________________________________________________________;

## Todo

1 - Faire un script de customisation pour une nouvelle session
2 - Faire un script pour rétablir les customisation de thème après une upgrade hasardeuse
3 - corriger le lien des mdp de vivaldi, et ajouter les options corrigées de ~/.config/vivaldi à l'archive
4 - supprimer du .hidden le dossier Games
5 - Refaire le lisez-moi
6 - faire la liste de toutes les applications
7 - faire une application simple pour changer sa version de java
