# Installer php

Php est installé par défaut sur les système linux, mais pas toujours à la toute dernière version.
Pour ubuntu 22.04 (au moins) et linux mint (associé à 22.04), il y a un PPA qui permet d'avoir la dernière version?

```sh
sudo nala install -y software-properties-common ca-certificates lsb-release apt-transport-https
LC_ALL=C.UTF-8 sudo add-apt-repository -y ppa:ondrej/php
sudo nala update
sudo nala install -y install php8.3
```
