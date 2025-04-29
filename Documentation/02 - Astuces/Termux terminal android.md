# Zsh et termux sur android

Pour termux on va faire en sorte qu'il s'ouvre direct sur download, mais d'abord on met
Si ce n'est pas déjà fait, accordez l'accès au stockage avec

```bash
termux-setup-storage
```

Acceptez l'autorisation si elle vous est demandée.

## Installer zsh

Zsh est une bonne option pour remplacer ash (la version light de bash),

```bash
pkg update
```

et ensuite

```bash
pkg install -y zsh
```

Puis pour le mettre en shell par défaut:

```bash
chsh -s zsh
```

Fermer et relancer termux.

## Variable $home pour le dossier Download

```bash
echo 'export home=/storage/emulated/0/Download' >> ~/.zshrc
echo 'export HOME=/data/data/com.termux/files/home' >> ~/.zshrc
```

Puis pour appliquer faites

```bash
source ~/.zshrc
```

A partir de maintenant `cd $home` (attention à la casse) redirige dans le dossier "Download".

## Installer un paquet avec pkg

Voici un exemple pour installer fdroidcl, pkg se comporte tout comme apt, en réalité c'est un wrapper d'apt.

```bash
pkg install -y fdroidcl
```

## Installer une application depuis fdroid

Pour l'instant il n'y a aucune CLI pour ça.
J'ai fait une feature request [ici, pour droid-ify](https://github.com/Droid-ify/client/issues/663)
Il y a bien [fdroidcl](https://github.com/mvdan/fdroidcl) mais ça ne marche pas directement, il faut l'utiliser depuis une autre machine connecté via adb, voir ce ticket [https://github.com/mvdan/fdroidcl/issues/33](direct on android)

## Créer un script

Un exemple de script :

```bash
#!/data/data/com.termux/files/usr/bin/sh

# Chemin absolu vers le répertoire de téléchargement
download_path="/storage/emulated/0/Download"

# Nom du fichier à créer
file_name="example.txt"

# Création du fichier dans le répertoire de téléchargement
touch "${download_path}/${file_name}"
```

Utilisez un éditeur de texte pour écrire le script. Par exemple, nano my_script.sh.
Copiez le contenu du script ci-dessus dans l'éditeur.
Enregistrez et fermez l'éditeur (CTRL+O, Enter, puis CTRL+X si vous utilisez nano).
Rendez le script exécutable : chmod +x my_script.sh.
Exécutez le script : ./my_script.sh.

## Executer un script au démarrage

Pour qu'un script soit executé au démarrage d'android il faut installer [Termux:Boot](https://f-droid.org/packages/com.termux.boot/) ou sur [sa page github](https://github.com/termux/termux-boot) où il y a les explication d'ici.

1. Start the Termux:Boot app once by clicking on its launcher icon. This allows the app to be run at boot.
2. Create the ~/.termux/boot/ directory.
3. Put scripts you want to execute inside the ~/.termux/boot/ directory. If there are multiple files, they will be executed in a sorted order.
4. Note that you may want to run termux-wake-lock as first thing if you want to ensure that the device is prevented from sleeping.
