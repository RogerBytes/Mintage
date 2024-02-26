# Mintage

<figure>
  <img src="./DATA/preview.jpg" alt="Preview">
  <figcaption></figcaption>
</figure>

Ce script est conçu pour automatiser le processus de personnalisation de Linux Mint en installant une suite complète de logiciels open source. De manière simple, les utilisateurs peuvent transformer leur système Linux Mint en un environnement de travail puissant et personnalisé, idéal pour les développeurs, les créateurs de contenu et (bien évidemment) les utilisateurs quotidiens.

## Présentation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Fonctionnalités

- **Installation Automatique** : Déployez votre environnement personnalisé sans intervention manuelle.
- **Suite Complète** : Le script inclut des logiciels pour le développement, la bureautique, le multimédia, et plus encore.
- **Open Source** : Tous les logiciels installés sont open source, garantissant transparence et respect de la vie privée.
- **Thème Préconfiguré** : Profitez d'un thème sobre et fonctionnel, conçu pour une expérience utilisateur optimale.

### Liste de logiciels

Une liste non exhaustive des logiciels inclus dans ce script :

- **Développement**: Codium, Git, Docker
- **Bureautique**: LibreOffice, Thunderbird
- **Multimédia**: GIMP, Kodi
- **Internet**: Vivaldi, FileZilla
- ...et beaucoup d'autres !

Vous pouvez aussi consulter [la liste complète.](./DATA/complete-list.md)

### Contributions

Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

### License

Distribué sous la licence GPLv3. Voir `LICENSE` pour plus d'informations.

</details>

---

## Prérequis

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

Une clean install de [Linux Mint 21.3 x86_64](https://www.linuxmint.com) est nécessaire.
Pour info pour coller dans le terminal il faut utiliser `CTRL + SHIFT + V` et pour copier `CTRL + SHIFT + C`.
`CTRL + C` sert à quitter dans le terminal.

Choisir les miroirs de téléchargement pour les mises à jour (prenez les plus rapides)
Pour ouvrir le terminal : `CTRL + ALT + T`

```bash
/usr/bin/software-properties-gtk
```

Ensuite choisissez les drivers

```bash
driver-manager
```

Installez les drivers propriétaires et "Appliquer les changements", puis fermez.

Faire les mise à jour

```bash
mintupdate
```

Et installer nala, une surcouche du gestionnaire apt

```bash
# Nala
sudo apt install -y nala expect curl wget
# puis changer les miroir de dl avec :
sudo nala fetch
# en répondant "2 3 4" sans oublier les espaces entre eux
# ou plus simplement (mais semble ne pas toujours marcher)
echo -e "2 3 4\nY" | sudo nala fetch
```

Il y a une source défaillante chez moi "linuxmirrors.ir", c'est pour ça que c'est "2 3 4" et non "1 2 3"
Si vous avez bbesoin de gérer les sources (pas besoin ici) ouvrez "Gestionnaire de mises à jour" et allez dans "Edition/Sources de logiciels", allez ensuite dans "Dépôts supplémentaires" et décochez la ou les sources en question.

### Téléchargement

Depuis le terminal, on télécharge [la dernière release](https://github.com/RogerBytes/Mintage/releases/latest), la décompresse et on entre dans le dossier :

```bash
latest_url=$(curl -sL -w '%{url_effective}\n' https://github.com/RogerBytes/Mintage/releases/latest -o /dev/null)
download_url="${latest_url/tag\/v/download/v}/Mintage-${latest_url##*/}.tar.gz"
wget $download_url
file=$(find . -name 'Mintage*.tar.gz' -print -quit)
tar -xvf "$file"
folder_name=$(tar -tf "$file" | head -1 | cut -f1 -d"/")
rm $file
cd $folder_name
```

</details>

---

## Installation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Installation scriptée

Dans le terminal, dans le dossier extrait depuis l'archive (l'on y est déjà après avoir fait les prérequis)

```bash
./prerequis.sh
```

Puis dans un nouveau terminal (depuis le dossier mintage) :

```bash
./install.sh
```

puis faire un reboot
Lancez vivaldi et thunderbird une première fois

après reboot, lancer :

```bash
./after-reboot.sh
```

### Installations manuelles

#### Grub Csutomizer

Si Dual-Boot seulement !
Dans un terminal :

```bash
grub-customizer
```

Dans Grub customizer mettez "calmgrub" comme thème avec l’icône de "+" dans l'onglet "apparence" (mettez calmgrub.tar.gz qui se trouve dans /racine du système) faites "appliquer" et enregistrez.

#### Gestionnaire de mises à jour

Dans "Gestionnaire de mises à jour" allez dans "Édition/Préférences", allez dans l'onglet "Paquet" et cochez les maj cinnamon et flatpak, ensuite allez dans l'onglet "Automatisation" et cochez tout sauf le dernier "Retirer les noyaux obsolètes et leurs dépendances".

#### Dual Boot avec Windows

Si Dual-Boot seulement !

Dans un terminal :

```bash
gnome-disks
```

Trouvez le disque où est installé Windows, puis chez la partition NTFS où il se trouve, sélectionnez-le puis cliquez
sur la petite roue de paramétrage. Choisissez l'option "modifier les options de montage",
Décochez "Réglages par défaut de la session" et décochez tout puis faîtes "Valider.

#### Appimages

Depuis le dossier caché `~/Applications` (qui sert à un gestionnaire pour stocker les appimages) lancez chacune des applications.

#### Jdownloader

Ouvrez Jdownloader et depuis fichier faites import
cliquez sur telechargement et lancer l'import du fichier JD2-Dark-Theme.jd2backup
Une fois relancé, allez dans paramètres/général et mettez votre d'utilisateur à la place de "harry" dans le chemin de téléchargement par défaut (premier de la liste)
à la fin d'install supprimez JD2-Dark-Theme.jd2backup

#### LanguageTools pour LibreOffice

Téléchargez l'extension via wget (dl direct)

```bash
wget https://languagetool.org/download/LanguageTool-stable.oxt
```

Dans LibreOffice allez dans "Outils/Gestionnaire des extensions..."
Puis "Ajouter" et choisir "LanguageTool-stable.oxt",

Dans LibreOffice aller dans "Outils/Options" (ou 'Alt+F12'), puis :
"Paramètres linguistiques" - "Linguistique" et allez dans l'encart "Modules linguistiques disponibles", puis : - Décochez "Vérificateur orthographique Hunspell" - "Langues" : - Interface utilisateur = "Français (France)" - Paramètres locaux = "Français (France)" - Monnaie par défaut = "EUR € Français (France)" - Occidental = "Français (France)" - décochez "Asiatique"

Dans votre dossier utilisateur se trouve le dossier Mintage : vous pouvez maintenant le supprimer !  
Une documentation avec plein de conseils et astuces se trouve dans `~/Local/Documentation`.

#### Derniers réglages

Sinon sur votre bureau 'clic droit' > personnaliser :
décochez "ajustement automatique", puis cliquez en bas sur "Paramètre du bureau"
Décochez le poste de travail et cochez le dossier personnel

Lancez Xpad une première fois depuis le menu.

Clic droit sur l’icône "préférences" dans l'onglet "au démarrage, cochez "Démarrer Xpad automatiquement après l'ouverture de session".

Votre installation est terminée !

</details>

---

## Todo

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

1. Faire un script de customisation pour une nouvelle session.
2. Corriger le lien vers trousseau du navigateur il faut mettre `vivaldi://password-manager/passwords`.
3. Faire une application simple pour changer de runtime Java.
4. Faire la creation de ~/Jeux/Lutris/Wineprefix/
5. Faire le support natif du client JD2 avec vivaldi.
6. Faire une importation auto du réglage flatpak de jd2 avec un wget et tar xz.
7. Mettre à jour les options de nemo avec tous les chemin dans les raccourcis dans la navbar
8. Rerégler ferdium, l'affichage est cracra

</details>

---

## Dernier rapport

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Problèmes

Fixé - Il y a un souci avec "linuxmirrors.ir" (source de logiciel), -> j'ai édité le pré requis

### Observations

Après qt5ct (juste après game feral mode et powerlevel de zsh) Système demande à relancer cinnamon. Et dans le shell il demande le mdp dans le terminal sans rien faire derrière.

#### Les paquets que je remets manuellement (afin de sauter une étape)

- blueman
- caffeine

-> plus de pb avec transmission-gtk

#### Les appli flatpak sans support de thème

- Ciano - Compression et conversion de fichiers audio et vidéo
- Mousai - io.github.seadve.Mousai
- Téléchargeur de vidéo - com.github.unrud.VideoDownloader

</details>

---

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
