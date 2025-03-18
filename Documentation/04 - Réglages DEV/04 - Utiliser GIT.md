# Utilisation de GIT

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Git est un système de contrôle de version qui permet de suivre les modifications apportées à un ensemble de fichiers au fil du temps. Il facilite la collaboration entre les développeurs en permettant de gérer les différentes versions d'un projet et de fusionner les modifications apportées par plusieurs personnes.

GitHub, quant à lui, est une plateforme en ligne basée sur Git qui facilite le partage, la collaboration et l'hébergement de projets Git. Cela permet aux développeurs de travailler ensemble sur des projets, de contribuer aux dépôts existants, de signaler des problèmes ou de demander des fonctionnalités, et de suivre les modifications apportées aux projets via l'interface web conviviale de GitHub.

________________________________________________________

## Régler Git

### Informations d'utilisateur

```bash
git config --global user.email "your_email@example.com"
git config --global user.name "John Doe"
```

### Branche par défaut

Afin d'éviter des avertissement ridicules, faites ceci :

```bash
git config --global init.defaultBranch master
```

________________________________________________________

## Nouveau projet quand tout est réglé

### Je crée un dossier local

```bash
mkdir testGodot
# Et je rentre dedans
cd testGodot
```

### Initialiser le dépôt local

```bash
git init
```

### Créer lu dépôt distant

Je créé un dépôt distant du même nom sur mon org de github

```bash
gh repo create RogerBytes-Softworks/testGodot --public
```

### Activer le remote

```bash
git remote add origin git@github.com:RogerBytes-Softworks/testGodot.git
```

### Premier envoi

#### Création d'un fichier `README.md`

Il est impossible de push depuis votre dépôt local vers le distant si le premier est vide
Créez donc un fichier `README.md` (vide) avec :

```bash
touch README.md
```

#### Premier "git add" et "git commit"

```bash
git add --all && git commit -m "First commit"
```

#### Premier "git push" (IMPORTANT)

Le premier push est différent :

```bash
git push --set-upstream origin master
```

Si vous avez besoin de forcer le push local vers le distant (pour un repo existant ayant eu un conflit dans l'historique par exemple)

```bash
git push --force --set-upstream origin master
```


Ensuite on utilise les commandes normales (`git push` sans rien d'autre derrière)

________________________________________________________

## Ouvrir une page github pour héberger une page web

Allez sur la page :
[https://github.com/#NomUser#ouNomOrg/#NomRepo/settings/pages](https://github.com/#NomUser#ouNomOrg/#NomRepo/settings/pages)
Et modifiez `#NomUser#ouNomOrg` et `#NomRepo` pour correspondre à chez vous.

-> Par exemple pour mon repo "testjeuweb" se trouvant dans mon org "RogerBytes-Softworks"
[https://github.com/RogerBytes-Softworks/testjeuweb/settings/pages](https://github.com/RogerBytes-Softworks/testjeuweb/settings/pages)

Sous branche, cliquez sur `None` choisissez laquelle contient votre html (chez moi sur master).
Puis cliquez sur `Save`

Au refresh de page le lien n’apparaît pas immédiatement
il faut minimum une minute ou deux avant que le site soit actualisé/créé.

Ca donnera un lien du type
[https://#NomUser#ouNomOrg.github.io/#NomRepo/](https://#NomUser#ouNomOrg.github.io/#NomRepo/)

dans mon cas :
[https://rogerbytes-softworks.github.io/testjeuweb/](https://rogerbytes-softworks.github.io/testjeuweb/)

### Conflit avec NodeJS

Attention, GitHub Pages fait un conflit avec node js, pour le résoudre, à la racine de votre projet :

```bash
touch .nojekyll
```

Cela va créer un fichier nommé `.nojekyll` à la racine de votre projet, empêchant GitHub de semer la zizanie.

________________________________________________________

## Faire un Merge

On va sur la branche de destination

```bash
git switch harry
```

Et ensuite on lance merge avec la branche émettrice

```bash
git merge main
```

On peut aussi forcer le reset de la branche actuelle avec la branche émettrice.
ATTENTION ! CA EFFACE TOUT POUR CLONER la branche émettrice

```bash
git reset --hard main
```

On corrige les conflits de fichiers puis on fait le add/commit/push

```bash
git add --all && git commit -m "correction du merge" && git push
```

________________________________________________________

## Faire une Pull Request

On va sur la branche de destination

```bash
gh pr create [flags]
```

Par exemple, j'ai fait :

```bash
gh pr create --title "Ajouter de mon jeu Gremlinvasion" --body "Voici les modifications que j'ai apportées aux fichiers" --base main
```

________________________________________________________

## Créer / Transférer / Supprimer / lister les dépôts distants sur GitHub

### Pour créer un dépôt distant sur GitHub

```bash
gh repo create {[org/]repo} --private
# par exemple :
gh repo create MyOrg/test --private
# -> pour un repo public, utiliser --public à la place
```

### Pour transférer un dépôt distant sur GitHub

je n'ai pas encore trouvé la commande, sinon il faut aller sur la page
[https://github.com/#NomDeCompte#/#Repo#/transfer](https://github.com/#NomDeCompte#/#Repo#/transfer)

### Pour supprimer un dépôt distant sur GitHub

```bash
gh repo delete {[org/]repo} --yes
# par exemple :
gh repo delete MyOrg/test
```

### Pour lister vos dépôts distants sur GitHub

```bash
gh repo list {[org]}
# -> si vous n'avez pas d'organisation, juste
gh repo list
```

________________________________________________________

## Créer une organisation

[Page Organisation de GitHub](https://github.com/settings/organizations)

Pour ajouter un collaborateur à votre repo (j'arrive pas à le faire en CLI) :
[https://github.com/ORGANISATION/REPO/settings/access](https://github.com/ORGANISATION/REPO/settings/access)

________________________________________________________

## Commandes diverses

### Supprimer l'initialisation de dépôt local

Pour supprimer l'initialisation, il suffit de faire dans le même chemin:

```bash
rm -r .git
```

### Voir la branche actuelle

```bash
git branch
```

### Créer une branche

```bash
git branch #nouveau nom#
```

### Supprimer une branche

```bash
git branch -d harry
# Si la branche à supprimer s'appelle "harry"
```

### Renommer une branche

```bash
git branch -M #nouveau nom#
```

### Changer de branche

```bash
git switch #nom de branche#
```

### Voir le réglage du remote

Cette commande permet de voir le référentiels des associations du depot local vers un depot distant :

```bash
git remote -v

```

### Réinitialiser le remote

Si vous vous trompez dans le nom d'org de dépôt (ou autre) faites :

```bash
git remote remove origin
# et recommencez le remote add suivi du push --set-upstream
```

### Push des fichier de plus de 100 mo sur GitHub LFS (sur un serveur séparé du repo)

Grâce à Git LFS, vous pouvez passez outre les limites de taille pour vos fichiers.

#### Installer Git LFS

```bash
sudo nala install -y git-lfs
# Ensuite on le configure en l'initialisant (une seule fois est nécéssaire)
git lfs install
```

#### Utiliser Git LFS

Dans le dépôt que vous voulez ovveride la taille de fichier

##### Pour tout type de fichier (déconseillé)

```bash
git lfs track "*.*"
git add .gitattributes
git commit -m "Track all files with Git LFS"
```

##### Pour un type de fichier en particulier

```bash
git lfs track "*.tar.gz"
git lfs track "*.exe"
git lfs track "*.zip"
git lfs track "*.bin"
# Ajoutez d'autres types de fichiers si nécessaire
git add .gitattributes
git commit -m "Track large files using Git LFS."
```

##### Pour des executables volumineux

```bash
for file in *; do
    if [[ ! "$file" == *.* ]]; then
        git lfs track "$file"
    fi
done

git add .gitattributes
git commit -m "Track files without extension using Git LFS"
```

##### Exemple d'usage particulier (comme sur Mintage)

```bash
git lfs track "*.*"
git lfs track "DATA/kodi.tar.gz"
git lfs track "DATA/vivaldi.tar.gz"
git add .gitattributes
git commit -m "Track all files with Git LFS"
git lfs migrate import --include="*.tar.gz"
# Et je conclue le push
git push
```

Attention, ici

________________________________________________________

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
