# Démarrer Proton Up avec son token GitHub

Il faut avoir son token GH enregistrer dans `~/.github/mytoken.txt` pour que la commande fonctionne !  
Pour ajouter son token à Proton Up :

```bash
echo "github_api_token = $(cat ~/.github/mytoken.txt)" >> ~/.var/app/net.davidotek.pupgui2/config/pupgui/config.ini
```

Vous pouvez désormais le lancer depuis le menu ou le terminal.
Il aura accès à votre jeton automatiquement à chaque fois.

## Ancienne méthode

Lancer proton avec cette commande :

```bash
PUPGUI_GHA_TOKEN=$(cat ~/.github/mytoken.txt) flatpak run net.davidotek.pupgui2
```
