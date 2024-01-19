# Erreur fichier non signé NOSPLIT

Si lors d'un update vous vous retrouvez avec

```bash
E: Impossible de récupérer http://linuxmirrors.ir/pub/ubuntu/dists/jammy/InRelease  Le fichier signé en clair n'est pas valable, ce qui a été reçu est « NOSPLIT ». Peut-être le réseau nécessite-t-il une authentification.
E: Le dépôt http://linuxmirrors.ir/pub/ubuntu jammy InRelease n'est pas signé.
N: Les mises à jour depuis un tel dépôt ne peuvent s'effectuer de manière sécurisée, et sont donc désactivées par défaut.
N: Voir les pages de manuel d'apt-secure(8) pour la création des dépôts et les détails de configuration d'un utilisateur.
```

Ouvrez "Gestionnaire de mises à jour" et allez dans "Edition/Sources de logiciels", allez ensuite dans "Dépôts supplémentaires"
et décochez la source en question, ici je décoche "linuxmirrors.ir".

Ensuite vous faites un

```bash
sudo apt update && sudo apt upgrade
```

et voilà.
