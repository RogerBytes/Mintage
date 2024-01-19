# Installer NodeJS

Pour installer node js sur ubuntu et dérivés :

Il faut installer une version à jour comme ceci (source depuis [deb.nodesource](https://deb.nodesource.com)).

```bash
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
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
