# Tailwind

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Utilisation du framework [tailwind](https://tailwindcss.com/docs/installation).

## Installation

on install tailwind dans ce dossier avec

```bash
npm install -D tailwindcss
```

et ensuite on l'init avec :

```bash
npx tailwindcss init
```

## Utilisation

Configurer le chemin de template

```html
<link rel="stylesheet" href="./dist/output.css">
```

Créer un dossier src avec un fichier input.css à l'intérieur et lui mettre :

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

Ensuite dans le chemin du projet (attention il faut que tailwind.config.js soit dans ce dossier, dans le cas présent il faut lancer :

```bash
npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch
```

Dans tailwind.config.js, il faut modifier la ligne comme qui suit :

```js
content: ["./index.html"],
```

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
