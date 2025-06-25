# Installer GIT

Git est un système de contrôle de version qui permet de suivre les modifications apportées à un ensemble de fichiers au fil du temps. Il facilite la collaboration entre les développeurs en permettant de gérer les différentes versions d'un projet et de fusionner les modifications apportées par plusieurs personnes.

GitHub, quant à lui, est une plateforme en ligne basée sur Git qui facilite le partage, la collaboration et l'hébergement de projets Git. Cela permet aux développeurs de travailler ensemble sur des projets, de contribuer aux dépôts existants, de signaler des problèmes ou de demander des fonctionnalités, et de suivre les modifications apportées aux projets via l'interface web conviviale de GitHub.

Préambule IMPORTANT : la version gratuite de gitlab est bien plus limitée que celle de github, il n'y a pas ou prou de CLI et de nombreuses options dérangeantes servent de paywall pour prendre un abonnement payant. Faites votre compte sur github pour commencer (voir les autres alternatives et leurs limitations, si vous en avez le temps).

## Installation

### GIT

```bash
sudo nala install -y git
# ou
sudo apt install -y git
```

### Github CLI

```bash
type -p curl >/dev/null || (sudo apt update && sudo apt install -y curl)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install -y gh
```

#### Reset gh (Github CLI)

En cas de souci avec gh (qui peut être capricieux avec un changement de token ou de compte), vous pouvez le reset avec

```bash
rm -r ~/.config/gh
```

## Générer sa clef SSH

Générez votre clef avec :

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Il retournera

```bash
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/USERNAME/.ssh/id_ed25519):
```

-> Faites 'Entrée' pour choisir le chemin/noms de fichiers par défaut, tapez ensuite un mdp pour votre clef SSH.

il vous retournera :

```bash
Your identification has been saved in /home/USERNAME/.ssh/id_ed25519
Your public key has been saved in /home/USERNAME/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:V4t2iPZV9co4tCq4r3s8qOwfw3Ft8q/Lz3C7CnJ9Qd9k your_email@example.com
The key's randomart image is:
+--[ED25519 256]--+
|         ..      |
|        . o      |
|       . o .     |
|      . o +      |
|     . S = .     |
|      * = +      |
|     o = o .     |
|    . o .        |
|     .           |
+----[SHA256]-----+
```

Et, enfin, ajoutez votre clef ssh au ssh-agent :

```bash
ssh-add ~/.ssh/id_ed25519
```

Pour faire en sorte que votre clef soit accessible via votre IDE

```bash
cat << EOF >> ~/.zshrc

# Correction SSH VS Code (version sûre)
if [ -n "\$VSCODE_PID" ]; then
  export GPG_TTY=\$(tty)
  export SSH_AUTH_SOCK=\$(gpgconf --list-dirs agent-ssh-socket 2>/dev/null)
  gpgconf --launch gpg-agent >/dev/null 2>&1 &
fi
EOF
source ~/.zshrc
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
ssh-add ~/.ssh/id_ed25519
```

GPG s'ouvre et vous demande de mettre un mdp pour acceder à votre clef ssh, vous pouvez laisser le même mdp.

Vous n'aurez plus à taper le mot de passe de votre clef ssh, ou au maximum une seule fois par session.

## Générer un nouveau token en CLI

Attention le token généré pour gh ne bénéficiera pas tous les droits administrateur !
Pour une utilisation plus efficace de gh je recommande de faire [Générer un Token API pour Github](#g%C3%A9n%C3%A9rer-un-token-api-pour-github)
On va commencer pa connecter gh à son propre compte GitHub.

```bash
gh auth login
```

Dans les prompts de la commande il faut sélectionner successivement :
`GitHub.com`
puis
`SSH`
ajouter sa clef SSH
`"/home/USERNAME/.ssh/id_ed25519.pub"`
et donner un nom à sa clef SSH
Et enfin, pour finir :
`Login with a web browser`

Copiez le code de sécurité du type `EOZ2-P421`
Tapez sur la touche `Entrée` pour ouvrir la page du navigateur
Collez le code de sécurité et cliquer ensuite sur `Authorize github` de la page internet.

Récupérer son token

```bash
mkdir -p ~/.github
gh auth token > ~/.github/mytoken.txt
```

### Générer un token API pour Github

Afin d'avoir un token disposant de tous les droits administrateur, je vous conseille de faire ce qui suit.

Générez votre token ici :
[Page de création de token Github](https://github.com/settings/tokens/new)

mettre la durée et tout cocher, puis "Generate token"
copiez le token, par exemple :
`ghp_1aBcDeFgHiJkLmNoPqRsTuVxYz1234567890`

Faites la commande suivante

```bash
mkdir -p ~/.github
# puis (en remplaçant le token avant entre guillemets bien sûr)
echo "ghp_1aBcDeFgHiJkLmNoPqRsTuVxYz1234567890" > ~/.github/mytoken.txt

# Si vous désirez une copie du token :
cp ~/.github/mytoken.txt ~/
```

## Se connecter à son compte github à l'aide du token

Commande pour connecter votre système à votre compte github.

Il faut avoir fait la partie [Générer un token API pour Github](### Générer un token API pour Github), puis :

```bash
gh auth login --with-token < ~/.github/mytoken.txt
```

### Pour se déconnecter

```bash
gh auth logout
```

### Changer le protocole de connexion

Pour le passer en ssh (vous pouvez faire la même chose pour https)

```bash
gh config set -h github.com git_protocol ssh
```

## Lier sa clef SSH à son compte github

vérifier que l'on est bien co avec

```bash
gh auth status
```

Donner les privilèges :

```bash
gh auth refresh -h github.com -s admin:org,admin:public_key,repo
```

puis ajouter la clef au compte github :

```bash
gh ssh-key add ~/.ssh/id_ed25519.pub
```

-> Désormais, vu que votre clef SSH est reconnue par votre compte github, ssh-agent se chargera tout seul de vous connecter à votre compte, plus besoin de rentrer vos infos et mdp ou même devoir taper 'gh auth login --with-token < ~/.github/mytoken.txt' pour vous connecter.

Lancez la connexion ssh à github avec :

```bash
ssh -T git@github.com
```

Tapez yes pour confirmer, et tapez le mdp de votre clef SSH (et cochez "Déverrouiller automatiquement cette clé quand je suis connecté").

Il retourne :

```bash
Hi @Username! You've successfully authenticated, but GitHub does not provide shell access.
```

Ca y est tout est installé correctement !
