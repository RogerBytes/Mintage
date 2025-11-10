# Composer - php

Composer est un gestionnaire de paquet (comme apt ou npm) pour php, il permet d'installer des modules dédiés à vos projets php.
Depuis : [Download composer](https://getcomposer.org/download/)

## Installer composer

installer les dépendances :

```bash
sudo nala update
sudo nala install -y php zip unzip 7zip libzip-dev
```

puis :

```bash
cd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'c8b085408188070d5f52bcfe4ecfbee5f727afa458b2573b8eaaf77b3419b0bf2768dc67c86944da1544f06fa544fd47') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

Voilà il est installé, vous pouvez installer des paquets avec.
Vous pouvez vérifier sa version avec :

```bash
composer -v
```

## Installer composer sur Docker

Aller dans le serveur apache ici on va prendre (comme exemple) "serverApache851" comme container de docker

Dans un shell il faut aller dans le container de docker.

```bash
docker exec -it serverApache851 bash
```

Ensuite :

installer les dépendances :

```bash
apt install -y nala
nala update
nala install -y zip unzip 7zip libzip-dev && docker-php-ext-install zip
```

Puis depuis [La Page officielle](https://getcomposer.org/download/) (attention la longue string change à chaque version) :

```bash
cd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```

## Installer des paquets avec composer

Dans le chemin de votre projet où l'on veut installer la dépendance donc pour moi

```bash
cd /var/www/html
```

### Installer un paquet

Lancer la commande pour télécharger le paquet désiré, ici pour [php mailer](https://github.com/PHPMailer/PHPMailer)

```bash
composer require phpmailer/phpmailer
```
