# Logiciels divers

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Découvrez une sélection de logiciels essentiels pour travailler efficacement sur vos projets informatiques. Ces outils polyvalents vous permettent de gérer votre code, collaborer avec votre équipe et optimiser votre flux de travail. Que ce soit pour le développement, la gestion de projet ou la conception, ces logiciels vous aideront à atteindre vos objectifs plus rapidement et efficacement. Simplifiez vos projets informatiques avec ces solutions professionnelles et performantes.

________________________________________________________

## Penpot

Penpot est une alternative open source à figma.
[Site de Penpot](https://penpot.app)

### Installer via apt

#### Ajouter le dépôt

```bash
curl -1sLf \
 'https://dl.cloudsmith.io/public/korbsstudio/penpot-desktop/setup.deb.sh' \
 | sudo -E bash
```

#### Installer

```bash
sudo nala install -y penpot-desktop
```

#### Ajouter une icône

```bash
sudo sed -i 's/^Icon=penpot-desktop$/Icon=wireframing-app/' /usr/share/applications/penpot-desktop.desktop
```

### Indispensable

Une fois installé, il faut le supprimer de la liste de logiciels (pour les màj)

```bash
sudo rm /etc/apt/sources.list.d/korbsstudio-penpot-desktop.list
```

### Installer via flatpak

Vous pouvez l'installer en local via un flatpak.

```bash
flatpak install -y flathub com.sudovanilla.penpot-desktop
```

Les lanceurs ".desktop" des applications flatpak sont dans `/var/lib/flatpak/exports/share/applications`

________________________________________________________

## Nouveau projet quand tout est réglé

Mettre mes infos et mes commandes ici.
________________________________________________________

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
