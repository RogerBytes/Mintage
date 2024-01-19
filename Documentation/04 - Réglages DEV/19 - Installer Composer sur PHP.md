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
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
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
sudo nala update
sudo nala install -y zip unzip 7zip libzip-dev && docker-php-ext-install zip
```

Puis :

```bash
cd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
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