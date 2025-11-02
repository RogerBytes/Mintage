# Réglages de VSC

## Changer le thème

Pour changer le thème des icônes et le theme de l'IDE

Pour le thème principal je conseille : gitpod

`Fichier/Préférences/Thème d'icône de fichier`
et
`Fichier/Préférences/Thème de couleur`

Pour un commentaire multilignes `CTRL+SHIFT+A`
Pour un commentaire monoligne `CTRL+SHIFT+:`

Appuyez sur `Ctrl + ,` pour ouvrir le panneau des paramètres.
Vous pouvez éditer manuellement le fichier .json en cliquant sur l’icône de roue dentée en haut à droite
vous pouvez aller direct dans le dossier où se trouve le dossier de réglages avec :
`~/.config/VSCodium/User`
et ouvrir le "settings.json"
cliquez sur "Modifier dans settings.json" pour accéder au fichier de configuration des paramètres.

Dans le fichier settings.json, remplacez le contenu :

```json
{
  "editor.matchBrackets": "never",
  "editor.inlayHints.enabled": "off",
  "workbench.colorCustomizations": {
    "editor.lineHighlightBackground": "#1073cf2d",
    "editor.lineHighlightBorder": "#9fced11f"
  },
  "editor.wordWrap": "on",
  "diffEditor.wordWrap": "on",
  "editor.guides.indentation": false,
  "editor.guides.bracketPairs": false,
  "bracketPairColorizer.depreciation-notice": false,
  "redhat.telemetry.enabled": true,
  "security.workspace.trust.untrustedFiles": "newWindow",
  "terminal.integrated.fontFamily": "MesloLGS NF",
  "terminal.integrated.fontSize": 14,
  "terminal.integrated.fontWeightBold": "bold",
  "terminal.explorerKind": "external",
  "terminal.external.linuxExec": "tilix",
  "terminal.integrated.inheritEnv": true,
  "editor.tabSize": 2,
  "cSpell.language": "en,fr,lorem",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "terminal.integrated.sendKeybindingsToShell": true,
  "workbench.productIconTheme": "material-product-icons",
  "workbench.colorTheme": "Gitpod Dark",
  "workbench.iconTheme": "material-icon-theme",
  "files.autoSave": "afterDelay",
  "workbench.editorAssociations": {
    "*.md": "vscode.markdown.preview.editor"
  },
  "markdownlint.config": {
    "MD033": false
  }
}
```

Pour changer les raccourcis clavier :
`CTRL+K` puis `CTRL+S`

Pour bind l'affichage de la barre tout à gauche, recherchez:
`barre d'activités`
Et modifier le bind de "Afficher: Activer/désactiver la visibilité de la barre d'activités"
Mettez `CTRL+B`

et mettez `CTRL+Alt+B` pour la barre latérale

Les raccourcis
`CTRL + B`
Pour afficher masque la barre principale des outils (la barre d'activité)

`CTRL + J` -> le panneau (avec le terminal)

Pour télécharger les extensions manuellement
Depuis le market place :
[https://marketplace.visualstudio.com/VSCode](https://marketplace.visualstudio.com/VSCode)

Par exemple pour console ninja :
[https://marketplace.visualstudio.com/items?itemName=WallabyJs.console-ninja](https://marketplace.visualstudio.com/items?itemName=WallabyJs.console-ninja)

On va télécharger en générant un lien manuellement en se basant sur [https://gist.github.com/wanglf/7acc591890dc0d8ceff1e7ec9af32a55](ces infos).

Voici la syntaxe du lien :

```html
https://${publisher}.gallery.vsassets.io/_apis/public/gallery/publisher/${publisher}/extension/${extension
name}/${version}/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
```

Donc on cherche les valeurs de

- `${publisher}`
- `${extension name}`
- `${version}`

Le lien contient déjà `${publisher}` et `${extension name}` dans `WallabyJs.console-ninja`  
Pour la `${version}`, sur a page il suffit de regarder dans la navbar à droite, dans `More Info` il est écrit la version `Version 1.0.432`
Donc pour console ninja ça va donner

```html
https://WallabyJs.gallery.vsassets.io/_apis/public/gallery/publisher/WallabyJs/extension/console-ninja/1.0.432/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
```

Lancez ce lien, il télécharge le fichier `Microsoft.VisualStudio.Services.VSIXPackage`, renommez l'extension `.VSIXPackage` en `.vsix`.

Dans la section Extensions, cliquer sur "..." (plus d'options) en haut à droite.
Sélectionner "Installer à partir de VSIX" dans le menu déroulant.
Navigue jusqu'à l'emplacement du fichier VSIX que tu souhaites installer et sélectionne-le.
L'extension sera installée et prête à être utilisée dans Codium.

Réglage du spell checker, en bas quand il souligne plein de truc cliquer sur "spell" dans la barre d'état et dans le dock "workspace" "user" "ficher" etc cocher "anglais" et "français" ainsi que "lorem"

## Les extensions qui foutent la merde à désinstaller

- spell right - ban.spellright

## Les extensions à rajouter

- PHP Awesome Snippets (pas sur le market codium)

Installer des extensions en ligne de commande

```bash
# Les extensions de VSCodium
codium --install-extension PKief.material-product-icons
codium --install-extension aaron-bond.better-comments
codium --install-extension captain-stack.captain-stack
codium --install-extension christian-kohler.path-intellisense
codium --install-extension Codeium.codeium
codium --install-extension donjayamanne.python-environment-manager
codium --install-extension eamodio.gitlens
codium --install-extension ecmel.vscode-html-css
codium --install-extension esbenp.prettier-vscode
codium --install-extension formulahendry.auto-close-tag
codium --install-extension formulahendry.auto-complete-tag
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension Gruntfuggly.todo-tree
codium --install-extension jaspernorth.vscode-pigments
codium --install-extension jock.svg
codium --install-extension KevinRose.vsc-python-indent
codium --install-extension kisstkondoros.vscode-gutter-preview
codium --install-extension leodevbro.blockman
codium --install-extension magicstack.MagicPython
codium --install-extension MohammadBaqer.better-folding
codium --install-extension MS-CEINTL.vscode-language-pack-fr
codium --install-extension ms-python.python
codium --install-extension ms-vscode.live-server
codium --install-extension oderwat.indent-rainbow
codium --install-extension PKief.material-icon-theme
codium --install-extension pranaygp.vscode-css-peek
codium --install-extension redhat.vscode-xml
codium --install-extension rid9.datetime
codium --install-extension shardulm94.trailing-spaces
codium --install-extension shellscape.shellscape-brackets
codium --install-extension tomoki1207.pdf
codium --install-extension yzane.markdown-pdf
codium --install-extension Angular.ng-template
codium --install-extension yzhang.markdown-all-in-one
codium --install-extension anteprimorac.html-end-tag-labels
codium --install-extension DavidAnson.vscode-markdownlint
codium --install-extension Josee9988.minifyall
codium --install-extension mongodb.mongodb-vscode
codium --install-extension bmewburn.vscode-intelephense-client
codium --install-extension zobo.php-intellisense
codium --install-extension MehediDracula.php-namespace-resolver
codium --install-extension devsense.phptools-vscode
codium --install-extension mtxr.sqltools
codium --install-extension syler.sass-indented
codium --install-extension joelday.docthis
codium --install-extension johnpapa.Angular2
codium --install-extension mrmlnc.vscode-apache
codium --install-extension adpyke.codesnap
codium --install-extension ms-azuretools.vscode-docker
codium --install-extension hediet.vscode-drawio
codium --install-extension usernamehw.errorlens
codium --install-extension Tobermory.es6-string-html
codium --install-extension mhutchie.git-graph
codium --install-extension mtxr.sqltools-driver-mysql
codium --install-extension rangav.vscode-thunder-client
codium --install-extension johnbillion.vscode-wordpress-hooks
codium --install-extension mblode.twig-language-2
codium --install-extension neilbrayfield.php-docblocker
codium --install-extension ritwickdey.LiveServer
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension streetsidesoftware.code-spell-checker-french
codium --install-extension gitpod.gitpod-theme
```

## Les extensions à remplacer

Rien
par
Rien

## Fichiers Markdown

Petite info sur le preview des fichiers markdown (grâce à l'extension preview markdown enhanced)
il y a menu burger dans la fenêtre de preview, en bas à droite. dans le bas du menu il y a l'option pour changer les thèmes

Certaines combinaisons de touches ne vont pas au terminal par défaut. À la place, elles sont gérées par VSCodium.
Ouvre les paramètres sur
@id:terminal.integrated.commandsToSkipShell,terminal.integrated.sendKeybindingsToShell,terminal.integrated.allowChords

## Ajouter la transparence au suggestion

Pour modifier ce sont les lignes en commentaires, foreground c'est les texte et background c'est la couleur de fond.
Si vous voulez simplement désactiver le tooltip décommentez la ligne "editor.hover.enabled"

```json
  // "editor.hover.enabled": false,
  // "editor.suggest.enabled": false,
  "workbench.colorCustomizations": {
    "editor.lineHighlightBackground": "#1073cf2d",
    "editor.lineHighlightBorder": "#9fced11f",
    // "editorSuggestWidget.background": "#21252b28",
    // "editorHoverWidget.background": "#21252b33",
    // "editorHoverWidget.foreground": "#21252b33",
  },
```

D'autres trucs (toujours en rapport avec les boite des suggestions et les autocomplétions) à tester dans le settings.json

```json
"editor.acceptSuggestionOnCommitCharacter": false,
"editor.acceptSuggestionOnEnter": "off",
"editor.hover.enabled": false,
"editor.minimap.enabled": false,
"editor.parameterHints.enabled": false,
"editor.quickSuggestions": false,
"editor.quickSuggestionsDelay": 10,
"editor.suggest.snippetsPreventQuickSuggestions": false,
"editor.suggestOnTriggerCharacters": false,
"editor.wordBasedSuggestions": false,
```

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
