# Bases de WordPress

Wordpress est un outil pour créer des site en nocode.

## Lien de WordPress

Il y a de faux sites, le vrai site est [WordPress.org](https://fr.wordpress.org).

## Ressources utiles

Différentes ressources, regrouppant des extensions, plugins et sites.

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Outils

- [Canvas](https://www.canva.com/fr_fr/) Un outil fantastique pour la création de graphiques et de designs.
- [IloveMG](https://www.iloveimg.com/fr) Compression d’images, conversion, recadrage et plein d’autres outils gratuits.
- Les banques d'images :
  1. [Unsplash](https://unsplash.com/fr)
  2. [Pexels](https://www.pexels.com/fr-fr/)
  3. [Pixbay](https://pixabay.com/fr/)
- Les banques d’Icônes :
  1. [Flaticon](https://www.flaticon.com/fr/)
  2. [SVGRepo](https://www.svgrepo.com)
  3. [TheNounProject](https://thenounproject.com)
  4. [Vecteezy](https://fr.vecteezy.com) Permet aussi d'avoir des illustrations vectorielles
  5. [Freepik](https://www.freepik.com) y compris pour les *.psd gratuits de photoshop qui sont utilisables avec Krita
- [RemoveBG](https://www.remove.bg/fr) Pour détourer une image en quelques secondes.
- [OBS Studio](https://obsproject.com/fr/) Un outil de capture d'écran et d'enregistrement vidéo, utile pour les démonstrations et les tutoriels que tu peux envoyer à tes clients si tu es freelance.
- [Dougs](https://www.dougs.fr) Une solution de comptabilité en ligne.
- [Zapier](https://zapier.com) Pour automatiser les tâches entre différentes applications en ligne.
- [GTmetrix](https://gtmetrix.com) Analyse la vitesse de ton site et propose des améliorations. Ou utiliser Lighthouse.
- [Toggle](https://toggl.com) Ça permet de voir sur quelles tâches tu passes le plus de temps (pour voir si ce sont vraiment des tâches importantes). Également utile si tu es freelance pour estimer le temps de travail sur les sites de tes clients
- [ManageWP](https://www.youtube.com/watch?v=J1JAvVYHhWg&list=PLwH7LnWMIZ9ZXq10mK2tZNQE2udYdh7uD) Gérez tous vos sites WordPress au même endroit
- [Calendly](https://www.youtube.com/watch?v=Bcp9MWGQ23M) La solution la plus SIMPLE pour créer un site de réservation sur WordPress
- [GoAffPro](https://www.youtube.com/watch?v=Ik3-OBYw8GA) Comment créer un programme d'affiliation sur WordPress
- [Hbook](https://www.youtube.com/watch?v=7F-A6OvsLaU) Créer un site de réservation
- [LearnDash](https://www.learndash.com) Héberger et vendre des formations.
- [One Click Upsell](https://www.youtube.com/watch?v=Zo0JK87oT3k) Une astuce simple pour immédiatement augmenter votre chiffre d'affaires
- [Imagify](https://imagify.io/fr/) Compresser les images directement depuis WordPress.
- [Alidropship](https://www.youtube.com/watch?v=9RpDsvbUTGs) Comment créer une boutique de DROPSHIPPING
- [FluentCRM](https://fluentcrm.com) Solution d’emailing directement depuis WordPress (remplace des outils comme Mailchimp ou Sendinblue).
- [SEM Rush](https://fr.semrush.com) Un outil SEO très complet pour trouver des mots clés à fort potentiel et analyser tes concurrents.
- Extensions chrome :
  1. [Save image as type](https://chromewebstore.google.com/detail/enregistrer-limage-sous-j/gabfmnliflodkdafenbcpjdlppllnemd) Permet de directement choisir le format de téléchargement pour une image.
  2. [WordPress Detector](https://chromewebstore.google.com/detail/wordpress-theme-detector/bjccepbfbikbpbgillfgicihhmpmjbjd?gl=US&hl=fr) Permet de détecter le thème et les plugins sur un site WordPress.

### Thèmes Wordpress

[OceanWP](https://www.youtube.com/watch?v=qn9sIybfSmo) Permet de détecter le thème et les plugins sur un site WordPress.

### Les plugins

1. [WP Fastest Cache](https://www.youtube.com/watch?v=_HAyAAGxJ48) Accélérer la vitesse de chargement de ton site grâce à la mise en place d'un système de cache.
2. [Updraft Plus](https://www.youtube.com/watch?v=RMKzb8IeDvw) mettre en place une sauvegarde automatique de ton site
3. [Elementor](https://www.youtube.com/watch?v=_LixFHi9SKs) Outil de personnalisation nocode pour le thème du site
4. [GA Google Analytics](https://www.youtube.com/watch?v=ZYEkwOOekQg) Analyser les données de tes visites
5. [Formidable Forms](https://www.youtube.com/watch?v=h9aPwt9WHvA) Le formulaire de contact
6. [Yoast SEO](https://www.youtube.com/watch?v=oDZdr3yb6ac) Comment optimiser ton SEO
7. iThemes Security - Permet de proteger le site contre le brute force et autres
8. [Cookie Notice](https://www.youtube.com/watch?v=bbaYuO3xeYs) Un plugin indispensable pour être en conformité avec le RGPD
9. [WooCommerce](https://www.youtube.com/watch?v=mddzCg86DcM) Ton site WordPress en une boutique en ligne
10. [WooCommerce Stripe Gateway](https://www.youtube.com/watch?v=K7PaKiJyYo0) permet d’accepter les paiements CB sur ta boutique grâce à l’intégration de Stripe

</details>

## Installer WordPress ?

On peut soit passer par un hébergeur en ligne ou l'installer (si l'on est plus technique mais n'est pas indispensable).
Ce qui suit permet de l'installer, encore une fois ce n'est pas obligatoire pour utiliser WordPress.

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

Via Docker [sur cette page officielle](https://hub.docker.com/_/wordpress)

A REFAIRE AVEC `https://tutoriels.lws.fr/wordpress/installer-wordpress-sur-ubuntu-linux-avec-un-lamp-stack`

### Dépendances

```bash
sudo nala install -y apache2 ghostscript libapache2-mod-php mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip
```

### Installation

```bash
sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
```

### Configurer Apache pour WordPress

Avec cette commande on va générer un fichier pré réglé dans `/etc/apache2/sites-available/wordpress.conf`

```bash
echo "<VirtualHost *:80>
    DocumentRoot /srv/www/wordpress
    <Directory /srv/www/wordpress>
        Options FollowSymLinks
        AllowOverride Limit Options FileInfo
        DirectoryIndex index.php
        Require all granted
    </Directory>
    <Directory /srv/www/wordpress/wp-content>
        Options FollowSymLinks
        Require all granted
    </Directory>
</VirtualHost>" | sudo tee /etc/apache2/sites-available/wordpress.conf
```

On active le site avec

```bash
sudo a2ensite wordpress
# puis
sudo systemctl reload apache2
```

On active la réécriture de l'URL avec

```bash
sudo a2enmod rewrite
# puis
sudo systemctl reload apache2
```

On désactive la page par défaut "It Works" avec

```bash
sudo a2dissite 000-default
# puis
sudo systemctl reload apache2
```

Ou, au lieu de désactiver la page «ça marche», vous pouvez modifier notre fichier de configuration pour ajouter un nom d'hôte pour lequel l'installation WordPress répondra aux demandes. Ce nom d'hôte doit être mappé dans votre boîte d'une manière ou d'une autre, par ex. via DNS, ou modifications des systèmes clients » dans le fichier `/etc/hosts`.

Ensuite on recharge le serveur apache pour appliquer les modifications avec

```bash
sudo service apache2 reload
# ou
sudo systemctl reload apache2
```

### Configurer la BDD SQL

```bash
sudo mysql -u root

# Welcome to the MySQL monitor.  Commands end with ; or \g.
# Your MySQL connection id is 8
# Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

# Copyright (c) 2000, 2024, Oracle and/or its affiliates.

# Oracle is a registered trademark of Oracle Corporation and/or its
# affiliates. Other names may be trademarks of their respective
# owners.

# Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
```

On passe dans la commande SQL `mysql>`, faites successivement les commandes suivantes (en remplaçant le mdp)

```sql
CREATE DATABASE wordpress;
--
CREATE USER wordpress@localhost IDENTIFIED BY '<your-password>';
--
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
  ON wordpress.*
  TO wordpress@localhost;
--
FLUSH PRIVILEGES;
--
quit

```

Activez MySQL avec

```bash
sudo service mysql start
```

### Configurer WordPress pour se connecter à la base de données

On commence par envoyer cette configuration à wo-config.php

```bash
sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php
```

Ensuite en ne remplaçant UNIQUEMENT "<your-password>" par votre mdp

```bash
sudo -u www-data sed -i 's/database_name_here/wordpress/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/username_here/wordpress/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/password_here/<your-password>/' /srv/www/wordpress/wp-config.php
```

Ensuite on va editer le fichier dans nano :

```bash
sudo nano /srv/www/wordpress/wp-config.php
```

et à l'aide de `CTRL + K` supprimez les lignes :

```bash
define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );
```

pour remplacer par le contenu du [générateur randomisé de WP](https://api.wordpress.org/secret-key/1.1/salt/)

Fermez avec `ctrl+x` suivi de `y` puis de `enter`.

### Régler WordPress dans le localhost

Allez sur `http://localhost/`
</details>

## Utiliser WordPress

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>
</details>
