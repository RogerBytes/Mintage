# Installer NodeJS

Pour installer node js sur ubuntu et dérivés :

Il faut installer une version à jour comme ceci (source depuis [deb.nodesource](https://deb.nodesource.com)).

```bash
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo bash -
sudo nala install -y nodejs
```

Le depot est mal réglé (il croit que je suis sur une archi 32bit et fait râler le gestionnaire de paquet système), au besoin virer le une fois node js installé
Faites donc :

```bash
sudo rm /etc/apt/sources.list.d/nodesource.list
# et
sudo apt update
```

Pour vérifier votre installation

```bash
node -v
# et
npm -v
```
