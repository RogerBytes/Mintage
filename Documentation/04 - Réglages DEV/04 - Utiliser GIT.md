# Utilisation de GIT

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Git est un système de contrôle de version qui permet de suivre les modifications apportées à un ensemble de fichiers au fil du temps. Il facilite la collaboration entre les développeurs en permettant de gérer les différentes versions d'un projet et de fusionner les modifications apportées par plusieurs personnes.

GitHub, quant à lui, est une plateforme en ligne basée sur Git qui facilite le partage, la collaboration et l'hébergement de projets Git. Cela permet aux développeurs de travailler ensemble sur des projets, de contribuer aux dépôts existants, de signaler des problèmes ou de demander des fonctionnalités, et de suivre les modifications apportées aux projets via l'interface web conviviale de GitHub.

---

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

### Créer un dépôt distant

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

---

## Faire un Merge

On va sur la branche de destination

```bash
git switch harry
```

Et ensuite on lance merge avec la branche émettrice

```bash
git merge master
```

On peut aussi forcer le reset de la branche actuelle avec la branche émettrice.
ATTENTION ! CA EFFACE TOUT POUR CLONER la branche émettrice

```bash
git reset --hard master
```

On corrige les conflits de fichiers puis on fait le add/commit/push

```bash
git add --all && git commit -m "correction du merge" && git push
```

---

## Faire une Pull Request

```bash
gh pr create --base main --head ma-branche --title "Titre de la PR" --body "Description des changements" --reviewer NOM_UTILISATEUR
```

`--reviewer NOM_UTILISATEUR` est facultatif, il sert à demander en même temps à un collaborateur en particulier de valider la PR.
Par exemple :

```bash
gh pr create --base master --head feature/harry-section --title "Test de PR avec REVIEW" --body "Coucou yassine" --reviewer YassineDev01
```

---

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

---

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

### Supprimer une branche locale

```bash
git branch -d harry
# Si la branche à supprimer s'appelle "harry"
```

### Supprimer une branche distante

```bash
git push origin --delete nom-de-la-branche
# Si la branche à supprimer s'appelle "harry"
```

### Renommer une branche

```bash
git branch -M #nouveau nom#
```

### Lier ma branche au dépôt distant

```bash
git push --set-upstream origin #NomDeBranche
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

### Lister les branches distantes

```bash
git branch -r
```

### Lister les branches distantes et locales

```bash
git branch -a
```

### Réinitialiser le remote

Si vous vous trompez dans le nom d'org de dépôt (ou autre) faites :

```bash
git remote remove origin
# et recommencez le remote add suivi du push --set-upstream
```

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

---

## Créer une organisation

[Page Organisation de GitHub](https://github.com/settings/organizations)

## Ajouter un collaborateur

Pour ajouter un collaborateur à votre repo (j'arrive pas à le faire en CLI) :

```bash
gh api \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  /repos/OWNER/REPO/collaborators/USERNAME \
  -f permission="maintain"
```

par exemple :

```bash
gh api \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  /repos/RogerBytes-Softworks/TPA/collaborators/YassineDev01 \
  -f permission="maintain"
```

Read
Recommended for non-code contributors who want to view or discuss your project.

Triage
Recommended for contributors who need to manage issues and pull requests without write access.

Write
Recommended for contributors who actively push to your project.

Maintain
Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.

Admin
Recommended for people who need full access to the project, including sensitive and destructive actions like managing security or deleting a repository.

---

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
