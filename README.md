# Mintage

<figure>
  <img src="./DATA/preview.jpg" alt="Preview" title="Screenshot de Mintage">
</figure>

Ce petit projet est conçu pour automatiser le processus de personnalisation de Linux Mint en installant une suite complète de logiciels open source. De manière simple, les utilisateurs peuvent transformer leur système Linux Mint en un environnement de travail puissant et personnalisé, idéal pour les développeurs, les créateurs de contenu et (bien évidemment) les utilisateurs quotidiens.

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
- **Internet**: Floorp, Vivaldi
- ...et beaucoup d'autres !

Vous pouvez aussi consulter [la liste complète](./DATA/complete-list.md).

### Contributions

Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

### License

Distribué sous la licence GPLv3. Voir `LICENSE` pour plus d'informations.

</details>

---

## Prérequis

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

Une clean install de [la dernière version de Linux Mint](https://www.linuxmint.com) est nécessaire.
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
sudo apt install -y nala expect curl wget
```

Il y a une source défaillante chez moi "linuxmirrors.ir", c'est pour ça que c'est "2 3 4" et non "1 2 3"
Si vous avez besoin de gérer les sources (inutile ici) ouvrez "Gestionnaire de mises à jour" et allez dans "Edition/Sources de logiciels", allez ensuite dans "Dépôts supplémentaires" et décochez la ou les sources en question.

### Téléchargement

Depuis le terminal, on télécharge [la dernière release](https://github.com/RogerBytes/Mintage/releases/latest) et on la décompresse :

```bash
latest_url=$(curl -sL -w '%{url_effective}\n' https://github.com/RogerBytes/Mintage/releases/latest -o /dev/null)
download_url="${latest_url/tag\/v/download/v}/Mintage-${latest_url##*/}.tar.gz"
wget $download_url
file=$(find . -name 'Mintage*.tar.gz' -print -quit)
tar -xvf "$file"
folder_name=$(tar -tf "$file" | head -1 | cut -f1 -d"/")
rm $file

```

</details>

---

## Installation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Installation scriptée

Dans le terminal, dans le dossier extrait depuis l'archive (l'on y est déjà après avoir fait les prérequis)

```bash
cd $HOME/Mintage/ && ./prerequis.sh
```

Puis dans un nouveau terminal :

```bash
cd $HOME/Mintage/ && ./install.sh
```

Il faut attendre d'avoir fait 'entrée' dans le terminal, un deuxième terminal s'ouvre et demande le mdp. Seulement après avoir mis le mdp on peut accepter de redémarrer cinnamon.
Puis faire un reboot.
Après le redémarrage lancez Jdownloader et Thunderbird une première fois, puis fermez les tous.

Ensuite, lancez :

```bash
cd $HOME/Mintage/ && ./after-reboot.sh
```

### Installations manuelles

#### Grub Cutomizer

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

Attention, si vous avez un dual boot avec windows, il faut ABSOLUMENT que vous désactiviez le fastboot sur votre session windows, sinon les autres disques ne seront jamais démontés correctement de la session windows (bravo microsoft pour cet éclair de génie).
[Désactiver le démarrage rapide de windows](https://www.malekal.com/desactiver-demarrage-rapide-windows-10-11/)

#### Appimages

Depuis le dossier `~/ApplicationsTemp` (qui sert à un gestionnaire pour stocker les appimages).
Lancer toutes les applications s'y trouvant pour que AppImage Launcher propose l'intégration
Vous pouvez supprimer le dossier après.

#### LanguageTools pour LibreOffice

Dans LibreOffice :
Il faut changer la version de RT Java dans : Outils/Options/LibreOffice/Avancé. Prendre celui avec la version la plus élevée (supérieur à 17).
Ensuite allez dans "Outils/Extensions..."
Puis "Ajouter" et choisir "WritingTool-25.10.oxt"
Dans LibreOffice aller dans "Outils/Options" (ou 'Alt+F12'), puis :
"Langues et locales/Linguistique"
Allez dans l'encart "Modules linguistiques disponibles", puis :
Décochez "Vérificateur orthographique Hunspell"
Options `Alt+F12` et aller dans `LibreOffice/Affichage` dans `Thème d'icônes` choisir `Colibre (dark)`

#### Derniers réglages

Sinon sur votre bureau 'clic droit' > personnaliser :
décochez "ajustement automatique".

Il faut ouvrir une fois les deux profils de floorp et patienter quelque secondes pour que l'initialisation des extensions se termine.

Pour lancer une détection des capteurs thermiques et autres :

```bash
sudo sensors-detect
```

Si vous utilisez un portable, ouvrez Lutris, allez dans "Préfèrences/Options globales (avec 'Avancé' activé en haut à droite)" et dans "Multi GPU"
Dans "Vulkan ICE loader", choisisé votre carte dédiée, pensez aussi à utiliser le mode performance de votre carte.


### Installation terminée

Dans votre dossier utilisateur se trouve le dossier Mintage : vous pouvez maintenant le supprimer.
Une documentation avec plein de conseils et astuces se trouve dans `~/Local/Documentation`.

Depuis la logithèque vous pouvez ajoutez les flatpak non certifiés dans les paramètres. Il s'agit de paquets maintenu par un tiers et non par leur développeur, peut provoquer des failles de sécurité.

Votre installation est terminée, amusez-vous bien sur Linux Mint !

</details>

---

## Todo

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

1. Il faut aussi dans applications préférées floorp et Rhythmbox
2. Faire un script de customisation pour une nouvelle session.
3. 
4. Faire une application simple pour changer de runtime Java.

</details>

---

## Dernier rapport

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Problèmes

- Aucun

### Observations

#### Les appli flatpak sans support de thème

Les applications utilisant GTK4 restent en blanc par défaut (à part si une option "dark theme" est dispo dans l'application nativement)

Non fixable tant que les dernières màj de libadwaita ne seront pas incluses dans linux mint et ou flatpak.

</details>

---

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
