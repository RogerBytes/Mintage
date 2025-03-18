# Installation manuelle de Pyhton

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Vous pouvez vérifier quelle version de Python est utilisée avec :

```bash
python3 -V
```

Pyhton est installé sur Ubuntu, mais pas dernières versions, voici comment en installer

[Documentation officielle de Godot](https://docs.godotengine.org/en/stable/index.html)

________________________________________________________

## Installation manuelle de Python

```bash
# Pour installer la dernière version de python

sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update
## Remplacez 3 et 12 par la version que vous voulez,ici c'est la 3.12.
X="3"
Y="12"

## Ou choisir la dernière version en utilisant curl pour récupérer les versions du site officiel et grep pour filtrer la dernière version 3.x
latest_python_version=$(curl -s https://www.python.org/downloads/ | grep "Download Python 3." | head -1 | grep -oP 'Python \K[0-9]+\.[0-9]+')

## Découpez la version pour obtenir les variables X et Y
X=$(echo $latest_python_version | cut -d. -f1)
Y=$(echo $latest_python_version | cut -d. -f2)

## Affichez X et Y pour vérifier
echo "Latest Python 3.x version is: $X.$Y"

## Enfin lancez l'installation avec ces variables :
sudo nala install -y python$X.$Y python$X.$Y-venv python$X.$Y-dev

## Ajouter le choix de version de python (Vérifiez quelle version de python vous avez par défaut dans /usr/bin/ moi c'est la 3.10)
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python$X.$Y 2

## Lancez le menu interactif pour choisir votre version avec
sudo update-alternatives --config python3

## ou choisissez directement avec set
sudo update-alternatives --set python3 /usr/bin/python$X.$Y
## ou pour mettre la dernier index
sudo update-alternatives --auto python3

## Attention de TOUJOURS REMETTRE APRES LA VERSION PAR DÉFAUT !!!

## Pour finir on installe pip3
sudo nala install -y python3-pip

```

________________________________________________________

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
