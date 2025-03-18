# Mettre à jour la clef de github cli

Si vous avez ce genre d'alerte :  

```bash
Impossible de récupérer https://cli.github.com/packages/dists/stable/InRelease  Les signatures suivantes ne sont pas valables

ne erreur s'est produite lors du contrôle de la signature. Le dépôt n'est pas mis à jour et les fichiers d'index précédents seront utilisés. Erreur de GPG : https://cli.github.com/packages stable InRelease : Les signatures suivantes ne sont pas valables : *********** GitHub CLI <opensource+cli@github.com>
```



Téléchargez et ajoutez la nouvelle clef :

```bash
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /usr/share/keyrings/githubcli-archive-keyring.gpg > /dev/null
```


Et mettez à jour apt :

```bash
sudo apt update
```
