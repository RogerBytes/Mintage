# Se servir de SCSS

## Installation

à la racine du projet, lancer :

```bash
npm install sass
# ou
sudo npm install -g sass
# pour installer la lib sur la machine et ne plus avoir à le faire
```

Quand utilise @use on peut importer d'autre fichier _*.scss
Les fichiers *.scss pour être importés doivent être nommés avec '_', le '_' n'est pas appelé dans le @use.

par exemple j'ai un fichier :
`_animation.scss``

pour l'importer dans mon fichier test.scss

je vais utiliser en entête (ça fera office d'import)
`@use animation``

Toutes les données scss de _animation.scss seront importées automatiquement si je génère le code du fichier test.scss en *.css, à cause du @use.

Dans mon utilisation personnelle je vais faire le scss page par page, genre un seul css sera généré par sass pour chaque page.

sass #nomDuFichier.scss nomDuFichier.css --watch

je peux mettre dans des sous répertoire pour le use :

```bash
scss/
├── index.scss
└── index-comp/
    └── _header.scss
    └── _footer.scss
```

Pour importer _button.scss je vais utiliser @use comme ce qui suit :

```scss
@use 'index-comp/header';
```

Par exemple pour générer depuis un fichier index.scss dans un dossier 'sass' un fichier index.css dans un dossier 'css' :

```bash
sass sass/style.scss css/style.css --watch --style compressed
```

-> l'option --watch permet de garder le processus de la commande actif, ainsi chaque modification de index.scss va générer à nouveau le index.css
