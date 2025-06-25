# Installer Docker

Docker est une plateforme logicielle qui permet de créer, déployer et exécuter des applications dans des conteneurs légers et isolés, offrant ainsi une meilleure portabilité et facilitant la gestion des environnements de développement et de production. Les conteneurs Docker encapsulent tout ce dont une application a besoin pour fonctionner, y compris le code, les dépendances et les configurations, ce qui simplifie le déploiement et permet d'obtenir une cohérence entre les différents environnements.

---

## Installation

### Installer Docker Engine

Source depuis le site de docker [Doc de docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

```bash
sudo nala update
sudo nala install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo nala update
sudo nala install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin pass
```

### Installer Docker Desktop

Source depuis le site de docker [Doc de docker](https://docs.docker.com/desktop/setup/install/linux/)

```bash
wget -O docker-desktop-amd64.deb "https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64"
sudo nala install -y ./docker-desktop-amd64.deb
rm ./docker-desktop-amd64.deb
```

Voilà, Docker Desktop est installé, ainsi que docker engine (inclus dans le paquet)

---

## Utilisation d'un compte Docker

### Connexion aux services en ligne de docker

Commencez par faire un compte sur :
[hub.docker.com](https://hub.docker.com/signup)  
Si vous avez un compte connectez vous sur [hub.docker.com/login](https://app.docker.com/login)

Si vous essayez de vous connecter ou de vous inscrire vous aurez le message :
`Unable to log in, you must initialize pass before login in to docker desktop`

En réalité Docker repose sur un gestionnaire de mot de passe qui s'appelle "pass", il est pré installé sur Ubuntu et dérivés, mais vous aurez à le régler et à utiliser une clef gpg

Ce qui suit est basé sur la page suivante :
[doc de docker](https://docs.docker.com/desktop/get-started/#credentials-management-for-linux-users)

#### Créer une clef gpg

Commencez par générer une clef gpg à l'aide de la commande :

```bash
gpg --generate-key
```

Vous aurez à mettre des infos (publiques sur la clef je précise) telles que votre nom/pseudo et votre email, quand vous aurez entré ce dernier il demandera une confirmation, validez en tapant "o" puis 'Entrée'. Un prompt popera pour vous demander d'y mettre un mdp. Attendez dans le shell qu'il ait fini de générer le tout.

Dans le shell, à la fin vous aurez

```bash
pub
pub  rsa3072 2023-11-22 [SC] [expire : 2025-11-21]
  5BB54DF1XXXXXXXXF87XXXXXXXXXXXXXX945A
uid           Utilisateur Anonyme <anonymous@example.com>
sub  rsa3072 2023-11-22 [E] [expire : 2025-11-21]
```

Copiez l'info à la place (chez vous) de `5BB54DF1XXXXXXXXF87XXXXXXXXXXXXXX945A`, il s'agit de votre clef gpg.

Les fichiers seront générés dans :
`~/.gnupg``

```debug
openpgp-revocs.d : Ce répertoire contient les révocations de clés GPG. Lorsqu'une clé GPG est révoquée, une entrée correspondante est créée dans ce répertoire pour indiquer qu'elle n'est plus valide.
private-keys-v1.d : Ce répertoire contient les clés privées GPG. Les clés privées sont utilisées pour signer et déchiffrer les messages.
pubring.kbx : Ce fichier est un trousseau de clés GPG contenant les clés publiques. Les clés publiques sont utilisées pour vérifier les signatures et chiffrer les messages.
pubring.kbx~ : Il s'agit d'une copie de sauvegarde du fichier pubring.kbx.
trustdb.gpg : Ce fichier contient les informations de confiance (niveau de confiance, validité, etc.) associées aux clés GPG.
openpgp-revocs.d : Ce répertoire contient les révocations de clés GPG. Lorsqu'une clé GPG est révoquée, une entrée correspondante est créée dans ce répertoire pour indiquer qu'elle n'est plus valide.
private-keys-v1.d : Ce répertoire contient les clés privées GPG. Les clés privées sont utilisées pour signer et déchiffrer les messages.
pubring.kbx : Ce fichier est un trousseau de clés GPG contenant les clés publiques. Les clés publiques sont utilisées pour vérifier les signatures et chiffrer les messages.
pubring.kbx~ : Il s'agit d'une copie de sauvegarde du fichier pubring.kbx.
trustdb.gpg : Ce fichier contient les informations de confiance (niveau de confiance, validité, etc.) associées aux clés GPG.
```

En cas de souci avec gpg, utilisez la commande pour lister vos clefs :

```bash
gpg --list-keys
```

Si jamais vou avez effacé le dossier ça générera les fichiers requis pour pouvoir générer une clef normalement

#### Initialiser pass

```bash
pass init <your_generated_gpg-id_public_key>
# Donc avec la fausse clef de l'exemple :
pass init 5BB54DF1XXXXXXXXF87XXXXXXXXXXXXXX945A
```

La commande vous retournera :

```bash
❯ pass init 5BB54DF1XXXXXXXXF87XXXXXXXXXXXXXX945A
mkdir: création du répertoire '/home/$USER/.password-store/'
Password store initialized for 5BB54DF1XXXXXXXXF87XXXXXXXXXXXXXX945A
```

Maintenant il ne vous reste plus qu'à cliquer sur le bouton "Sign in", il vous redirigera sur le site de docker pour vous connecter / déconnecter.

### Diminuer les demandes de mdm de gnupg

Pour lui mettre une durée de 8 heures.

```bash
echo -e "default-cache-ttl 28800\nmax-cache-ttl 28800" > ~/.gnupg/gpg-agent.conf
```

Les modifications seront prises en compte au redémarrage.

Sinon pour éviter d'attendre un reboot pour appliquer les changements :

```bash
gpgconf --kill gpg-agent && gpgconf --launch gpg-agent
```
