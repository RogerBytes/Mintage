# Iconify

C'est une extension très pratique pour ajouter des icônes dans mon body, c'est la plus grande banque d’icônes, car toutes les collections d’icônes s'y trouvent.

Alternative
[SvgRepo](https://www.svgrepo.com/collections/)

Rechercher les icônes sur
[icones.JS](https://icones.js.org)
[icones.JS Collections](https://icones.js.org/settings)
[icon-sets.iconify](https://icon-sets.iconify.design)

## Installation

A la racine du projet, lancer

```bash
npm install @iconify/iconify
```

Ne pas oublier de mettre le script dans le head

```html
<script src="./node_modules/@iconify/iconify/dist/iconify.min.js" defer type="module"></script>
```

## Utilisation dans le HTML

Par exemple pour cette icône :
[eva](https://icon-sets.iconify.design/eva/people-outline/)
[eva de icones.JS](https://icones.js.org/collection/eva/)

Insérez `eva:people-outline` dans l'attribut `data-icon`, comme ceci :

```html
<i class="iconify" data-icon="eva:people-outline" style="font-size: 1.9em; color: #d9d9d9"></i>
```

Ici c'est dans un `<i>` (mais ça marche avec n'importe quel type de balise), avec pour le style une taille (1em par défaut) et couleur personnalisées.

## Intégration avancée dans Angular

Pour s'en servir avec angular, voir :
[GitHub iconify-angular](https://github.com/visurel/iconify-angular)
[NPM iconify-angular](https://www.npmjs.com/package/@visurel/iconify-angular)

Todo : faire la suite quand je serais sur Angular.

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
