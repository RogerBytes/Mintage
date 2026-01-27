# Mintage

<figure>
  <img src="./assets/preview.jpg" alt="Preview" title="Screenshot de Mintage">
</figure>

Ce petit projet est conçu pour automatiser le processus de personnalisation de Linux Mint en installant une suite complète de logiciels open source. De manière simple, les utilisateurs peuvent transformer leur système Linux Mint en un environnement de travail puissant et personnalisé, idéal pour les développeurs, les créateurs de contenu et (bien évidemment) les utilisateurs quotidiens.

## Présentation

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

### Fonctionnalités

- **Installation Automatique** : Déployez votre environnement personnalisé sans intervention manuelle.
- **Suite Complète** : Le script inclut des logiciels pour le développement, la bureautique, le multimédia, et plus encore.
- **Open Source** : Tous les logiciels installés sont open source, garantissant transparence et respect de la vie privée.
- **Thème Préconfiguré** : Profitez d'un thème sobre et fonctionnel, conçu pour une expérience utilisateur optimale.

### Liste de logiciels

Une liste non exhaustive des logiciels inclus dans ce script :

- **Développement**: Codium, Git
- **Bureautique**: LibreOffice, Thunderbird
- **Multimédia**: GIMP, Kodi
- **Internet**: Floorp, Ungoogled Chromium
- ...et beaucoup d'autres !

TODO ! Vous pouvez aussi consulter [la liste complète](./DATA/complete-list.md).

### Contributions

Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

### License

Distribué sous la licence GPLv3. Voir `LICENSE` pour plus d'informations.

</div></details>

---

## Prérequis

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

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
sudo apt install -y nala expect curl wget git
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

</div></details>

---

## Installation

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

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
Après le redémarrage lancez Thunderbird une première fois, puis fermez le.

Ensuite, lancez :

```bash
cd $HOME/Mintage/ && ./after-reboot.sh
```

### Installations manuelles

#### Gestionnaire de mises à jour

Dans "Gestionnaire de mises à jour" allez dans "Édition/Préférences".  
Aller dans l'onglet "Options" et cocher tout.  
Aller dans l'onglet "Automatisation" et cocher tout sauf le dernier "Supprimer les noyaux et les dépendances obsolètes".

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

Ouvrir `Gear Lever`

Depuis le dossier `~/AppImagesAInstaller` glisser toutes les applications s'y trouvant dans la fenêtre de GearLever et cliquer sur **Move all to the app menu**, cochez "I have verified the source of the apps" puis "Proceed".
Vous pouvez supprimer le dossier après.

#### LanguageTools pour LibreOffice

Dans LibreOffice

- Options `Alt+F12` et `LibreOffice/Avancé̀` choisir `Ubuntu  21.0.9` (premier de liste) puis "OK" et "redémmarer maintenant"
- Extensions `CTRL+Alt+E`, puis "Ajouter" et choisir "WritingTool-**\***.oxt" puis "Fermer" et "redémmarer maintenant"
- Options `Alt+F12` et `Langues et locales/Linguistique` décochez "Vérificateur orthographique Hunspell" (en haut) puis "Appliquer"
- Options `Alt+F12` et `LibreOffice/Affichage` dans `Mode` choisir `Sombre` et `Thème d'icônes` choisir `Colibre (dark)` puis "OK"

#### Derniers réglages

Sinon sur votre bureau 'clic droit' > personnaliser :
décochez "Arrangement automatique".

Il faut ouvrir une fois les deux profils de floorp et patienter quelque secondes pour que l'initialisation des extensions se termine.

Si vous utilisez un portable, ouvrez Lutris, allez dans "Préfèrences/Options globales (avec 'Avancé' activé en haut à droite)" et dans "Multi GPU"
Dans "Vulkan ICE loader", choisisé votre carte dédiée, pensez aussi à utiliser le mode performance de votre carte.

### Installation terminée

Dans votre dossier utilisateur se trouve le dossier Mintage : vous pouvez maintenant le supprimer.

Depuis la logithèque vous pouvez ajoutez les flatpak non certifiés dans les paramètres. Il s'agit de paquets maintenu par un tiers et non par leur développeur, peut provoquer des failles de sécurité.

Votre installation est terminée, amusez-vous bien sur Linux Mint !

</div></details>

---

## Dernier rapport

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

### Durée installation

Sur `HP Pavillon 15 bn` : i7-4510U [4 coeurs @ 3.100GHz] | 16 Go de RAM | Stockage SSD | Fibre via Wifi

- 09:30 Installation Linux Mint
- 06:00 Installation pilote de carte graphique
- 03:12 Installation des mises à jour initiale
- 34:00 Installation de Mintage

Durée totale : `52 minutes`

### Problèmes

- Aucun

### Observations

RAS

### Export des mimetype / App par défaut

ce fichier

```bash
~/.config/mimeapps.list
```

#### Les appli flatpak sans support de thème

Les applications utilisant GTK4 restent en blanc par défaut (à part si une option "dark theme" est dispo dans l'application nativement)

Non fixable tant que les dernières màj de libadwaita ne seront pas incluses dans linux mint et ou flatpak.

</div></details>

---

## Auteur

[<img src="https://github.com/RogerBytes.png" width="40" height="40" style="border-radius:50%;" alt="RogerBytes' avatar">](https://github.com/RogerBytes)  
[**RogerBytes (Harry Richmond)**](https://github.com/RogerBytes)

<span hidden>
<details><summary></summary>
<style>.spoiler{border-left:4px solid #1abc9c;border-bottom-left-radius:3px;padding-left:10px;padding-top:15px;margin-top:-10px;margin-bottom:15px}.button{cursor:pointer;padding:5px 10px;background-color:#3498db;color:white;border-radius:3px;margin-bottom:5px;display:inline-block;transition:background-color 0.2s}.button:hover{background-color:#217dbb}details[open] .button{background-color:#1abc9c}</style>
</details></span>

<p align="right"><a href="#mintage">🔝 Retour en haut</a></p>
