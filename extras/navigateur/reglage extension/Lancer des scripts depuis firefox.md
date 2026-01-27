# External Application Button

Commencez par installer [External Application Button](https://addons.mozilla.org/en-US/firefox/addon/external-application/), ça permet de créer des boutons qui lance des scripts du système, par exemple pour ouvrir la page dans freetube ou une autre application.

## Utilisation de l'extension

On va montrer un exemple d'utilisation, ici avec les version flatpal de `FreeTube` et `Video Downloader`.

### Générer les scripts système

Ces blocs de code ajouteront les commandes `open-with-freetube` et `open-with-video-downloader` au système.

#### Script FreeTube flatpak

```bash
sudo tee /usr/local/bin/open-with-freetube > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/run.sh --file-forwarding io.freetubeapp.FreeTube @@u "$URL" @@
EOF
sudo chmod +x /usr/local/bin/open-with-freetube
```

#### Script Video Downloader flatpak

```bash
sudo tee /usr/local/bin/open-with-video-downloader > /dev/null << 'EOF'
#!/bin/bash
URL="$1"
flatpak run com.github.unrud.VideoDownloader --url="$URL"
EOF
sudo chmod +x /usr/local/bin/open-with-video-downloader
```

## Paramètrer le bouton

Ici on va faire avec le script FreeTube flatpak, dans la page

- Display Name : Ouvrir dans FreeTube
- Executable Name : open-with-freetube
- Arguments : [HREF]

- Cocher :
    - bouton Toolbar button
    - bouton Page Context

- Cliquer sur `Icon` et parcourir et choisir l'icone désirée.

- Finir la programmation du bouton avec  `Add Application`

---

## Cloner External Application Button

Ceci va permettre d'avoir plusieurs boutons au lieu d'un seul.

### Vérifier la configuration pour les extensions non signées
 
- Aller à `about:config`
- Chercher `xpinstall.signatures.required`
- Vérifier qu'elle est sur `false`

### Trouver l’extension

- Aller dans `~/.floorp/0a2qqe25.default/extensions`
- Si le nom n’est pas explicite, double-cliquer sur les `.xpi` pour regarder le nom dans `manifest.json` (ne pas installer)
- Copier l’extension `*.xpi` trouvée dans un autre dossier et la décompresser

### Modifier le manifest

- Ouvrir `manifest.json`

- Modifier les clefs `name` et `id` :

```json
"name": "External Application Launcher"
"id": "{65b77238-bb05-470a-a445-ec0efe1d66c4}"
```

Par exemple :

```json
"name": "External Application Launcher clone"
"id": "{12345678-1234-1234-1234-123456789abc}"
```


### Créer un nouveau XPI 

Depuis le dossier parent du repertoire de l'extension :

```bash
cd NomDuDossier
zip -r ../nom-extension.xpi . 
```

Par exemple

```bash
cd extension-manager-clone
zip -r ../ExternalAppLauncher-clone.xpi . 
```

### Installer l’extension clonée

Glisser-déposer le `.xpi` dans `about:addons`, ou simplement double cliquer dessus.


### Modifier et installer le client Node.js ()

On le télécharge on décompresse l'archive

```bash
wget https://github.com/andy-portmen/native-client/releases/download/1.0.6/linux.zip
unzip linux.zip -d client-node-js
```

dans le répertoire "client-node-js/app" ourvrir `config.js` et en dessous de  
`    '{65b77238-bb05-470a-a445-ec0efe1d66c4}', // External Application Button`  
on ajoute notre version, donc ici

```js
    '{12345678-1234-1234-1234-123456789abc}', // External Application Button clone
```

et on sauvegarde

#### Lancer l'installation

On retourne dans `client-node-js` et on lance l'installation avec

```bash
./install.sh
```


