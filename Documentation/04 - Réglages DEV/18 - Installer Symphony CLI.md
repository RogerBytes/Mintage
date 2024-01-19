# Installer

Installer Symphony CLI

```bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
sudo nala install -y symfony-cli php-xml php-mysql
```

-> J'ai ajouté le paquet "php-xml" suite à mon problème ici https://github.com/symfony/maker-bundle/issues/1022#issuecomment-1886867723
Regardez si vous avez des problème pour créer des nouveaux projets, j'y explique l'endroit où les dépendance sont indiquées.
php-mysql est requis pour se co à la bdd


Pour vérifier qu'il est bien installé :

```bash
symfony -v
```
