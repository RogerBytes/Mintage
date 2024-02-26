# Installer Godot

[![Build Status](https://travis-ci.org/votre-utilisateur/votre-projet.svg?branch=master)](https://travis-ci.org/votre-utilisateur/votre-projet)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Mes débuts sur Godot

[Documentation officielle de Godot](https://docs.godotengine.org/en/stable/index.html)

---

## Installation OneLine

### Version normale à jour (FBX2glTF inclus)

```bash
wget $(curl -s https://api.github.com/repos/godotengine/godot/releases/latest | grep "browser_download_url.*stable_linux.x86_64.zip" | cut -d : -f 2,3 | tr -d \") && unzip "Godot*.zip" && rm Godot*.zip && mkdir -p ~/.godot && mv *.x86_64 ~/.godot/ && mv ~/.godot/*stable_linux.x86_64 ~/.godot/godot.x86_64 && timeout 1s ~/.godot/godot.x86_64 ; echo "Error messages intented" ; sudo sh -c 'echo "#!/bin/sh\n\nUSER_NAME=\$(whoami)\nDATA_DIRECTORY=/home/\$USER_NAME/.godot\nBINARY_FILE=/home/\$USER_NAME/.godot/godot.x86_64\ncd \$DATA_DIRECTORY\nexec \$BINARY_FILE \"\$@\"" > /usr/bin/godot && sudo chmod +x /usr/bin/godot' ; sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Godot\nComment=Game Engine\nExec=godot\nIcon=godot\nTerminal=false\nCategories=Game;Development;" > /usr/share/applications/godot.desktop && sudo chmod +x /usr/share/applications/godot.desktop' ; sudo update-desktop-database && wget $(curl -s https://api.github.com/repos/godotengine/FBX2glTF/releases/latest | grep "browser_download_url.*linux-x86_64.zip" | cut -d : -f 2,3 | tr -d \") && unzip "FBX2glTF*.zip" && rm FBX2glTF*.zip && mv  FBX2glTF-linux-x86_64/FBX2glTF-linux-x86_64 ~/.godot/FBX2glTF-linux-x86_64 && rm -r FBX2glTF-linux-x86_64
```

### Version C# à jour (FBX2glTF inclus)

```bash
sudo apt install -y dotnet-sdk-7.0 && wget $(curl -s https://api.github.com/repos/godotengine/godot/releases/latest | grep "browser_download_url.*stable_mono_linux_x86_64.zip" | cut -d : -f 2,3 | tr -d \") && unzip "Godot*.zip" && rm Godot*.zip && mkdir -p ~/.godot  && mv *x86_64/*.x86_64 ~/.godot/ && mv *x86_64/GodotSharp ~/.godot/ && rm -r *x86_64/ && mv ~/.godot/*mono_linux.x86_64 ~/.godot/godot-dotnet.x86_64 && timeout 1s ~/.godot/godot-dotnet.x86_64 ; echo "Error messages intented" ; sudo sh -c 'echo "#!/bin/sh\n\nUSER_NAME=\$(whoami)\nDATA_DIRECTORY=/home/\$USER_NAME/.godot\nBINARY_FILE=/home/\$USER_NAME/.godot/godot-dotnet.x86_64\ncd \$DATA_DIRECTORY\nexec \$BINARY_FILE \"\$@\"" > /usr/bin/godot-dotnet && sudo chmod +x /usr/bin/godot-dotnet' ; sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Godot C#\nComment=Game Engine\nExec=godot-dotnet\nIcon=godot\nTerminal=false\nCategories=Game;Development;" > /usr/share/applications/godot-dotnet.desktop && sudo chmod +x /usr/share/applications/godot-dotnet.desktop' ; sudo update-desktop-database && wget $(curl -s https://api.github.com/repos/godotengine/FBX2glTF/releases/latest | grep "browser_download_url.*linux-x86_64.zip" | cut -d : -f 2,3 | tr -d \") && unzip "FBX2glTF*.zip" && rm FBX2glTF*.zip && mv FBX2glTF-linux-x86_64/FBX2glTF-linux-x86_64 ~/.godot/FBX2glTF-linux-x86_64 && rm -r FBX2glTF-linux-x86_64
```

---

## Désinstallation OneLine

### Uninstall - Version normale à jour (FBX2glTF inclus)

```bash
sudo rm -r ~/.godot && sudo rm /usr/bin/godot && sudo rm /usr/share/applications/godot.desktop && sudo update-desktop-database
```

### Uninstall - Version C# à jour (FBX2glTF inclus)

```bash
sudo rm -r ~/.godot && sudo rm /usr/bin/godot-dotnet && sudo rm /usr/share/applications/godot-dotnet.desktop && sudo update-desktop-database
```

---

## Installation détaillée

### Requis (pour la version dotnet)

SDK Dotnet

Pour installer dotnet via un gestionnaire de paquet :
Chercher la dernière version du SDK avec la commande

```bash
nala search dotnet-sdk
```

ensuite installer la dernière version du SDK (late 2023) avec:

```bash
sudo nala install -y dotnet-sdk-7.0
```

ou

```bash
sudo apt install -y dotnet-sdk-7.0
```

Pour vérifier l'installation :

```bash
dotnet --list-sdks
# ou
dotnet --info
```

### Installer Godot manuellement

Télécharger la dernière version DotNet

```bash
wget $(curl -s https://api.github.com/repos/godotengine/godot/releases/latest | grep "browser_download_url.*stable_mono_linux_x86_64.zip" | cut -d : -f 2,3 | tr -d \")
```

Télécharger la dernière version normale

```bash
wget $(curl -s https://api.github.com/repos/godotengine/godot/releases/latest | grep "browser_download_url.*stable_linux.x86_64.zip" | cut -d : -f 2,3 | tr -d \")
#suivi direct de
unzip "Godot*.zip"
rm Godot*.zip
mkdir -p .godot
mv *.x86_64 .godot/
# et passer à #renommer l'executable en godot.x86_64
```

Décompression

```bash
unzip "Godot*.zip"
```

Supprimer le fichier zip

```bash
rm Godot*.zip
```

Renommer le dossier en ".godot"

```bash
find ~/ -maxdepth 1 -type d -name "Godot*" -exec mv {} ~/.godot/ \;
```

Renommer l'executable en godot.x86_64 pour version normale

```bash
mv .godot/*.x86_64 .godot/godot-dotnet.x86_64
```

Renommer l'executable en godot-dotnet.x86_64 pour la version Dotnet

```bash
mv .godot/*.x86_64 .godot/godot-dotnet.x86_64
```

Le lancer une première fois (version normale) pour l'initialiser :

```bash
timeout 1s .godot/godot.x86_64
```

Le lancer une première fois (version Dotnet) pour l'initialiser :

```bash
timeout 1s .godot/godot-dotnet.x86_64
```

Créer l'executable "godot" (avec des chemins relatifs) dans `/usr/bin/` :

Pour la version normale

```bash
sudo sh -c 'echo "#!/bin/sh\n\nUSER_NAME=\$(whoami)\nDATA_DIRECTORY=/home/\$USER_NAME/.godot\nBINARY_FILE=/home/\$USER_NAME/.godot/godot.x86_64\ncd \$DATA_DIRECTORY\nexec \$BINARY_FILE \"\$@\"" > /usr/bin/godot && sudo chmod +x /usr/bin/godot'
#Attention si on le relance depuis la même instance du shell, le whoami ne marchera pas (le whoami ira chercher root au lieu du nom d'utilisateur !
```

Pour la version Dotnet

```bash
sudo sh -c 'echo "#!/bin/sh\n\nUSER_NAME=\$(whoami)\nDATA_DIRECTORY=/home/\$USER_NAME/.godot\nBINARY_FILE=/home/\$USER_NAME/.godot/godot-dotnet.x86_64\ncd \$DATA_DIRECTORY\nexec \$BINARY_FILE \"\$@\"" > /usr/bin/godot-dotnet && sudo chmod +x /usr/bin/godot-dotnet'
#Attention si on le relance depuis la même instance du shell, le whoami ne marchera pas (le whoami ira chercher root au lieu du nom d'utilisateur !)
```

Le lanceur godot.desktop à faire dans `/usr/share/applications`

Pour la version normale :

```bash
sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Godot\nComment=Game Engine\nExec=godot\nIcon=godot\nTerminal=false\nCategories=Game;Development;" > /usr/share/applications/godot.desktop && sudo chmod +x /usr/share/applications/godot.desktop'

```

Pour la version Dotnet :

```bash
sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Godot C#\nComment=Game Engine\nExec=godot-dotnet\nIcon=godot\nTerminal=false\nCategories=Game;Development;" > /usr/share/applications/godot.desktop && sudo chmod +x /usr/share/applications/godot-dotnet.desktop'

```

Rafraîchir la liste dans `/usr/share/applications`

```bash
sudo update-desktop-database

```

Il y a aussi un module à télécharger :

En One-Line :

```bash
wget $(curl -s https://api.github.com/repos/godotengine/FBX2glTF/releases/latest | grep "browser_download_url.*linux-x86_64.zip" | cut -d : -f 2,3 | tr -d \") && unzip "FBX2glTF*.zip" && rm FBX2glTF*.zip && mv  FBX2glTF-linux-x86_64/FBX2glTF-linux-x86_64 .godot && rm -r FBX2glTF-linux-x86_64
```

ou

[Dernière release de FBX2glTF](https://github.com/godotengine/FBX2glTF/releases/latest)

ou le télécharger direct en wget (la dernière version)

```bash
wget $(curl -s https://api.github.com/repos/godotengine/FBX2glTF/releases/latest | grep "browser_download_url.*linux-x86_64.zip" | cut -d : -f 2,3 | tr -d \")
```

Puis le décompresser :

```bash
unzip "FBX2glTF*.zip"
```

Supprimer le fichier zip

```bash
rm FBX2glTF*.zip
```

Ajouter le module dans le répertoire de godot (.godot) et supprimer le dossier :

```bash
mv  FBX2glTF-linux-x86_64/FBX2glTF-linux-x86_64 .godot
rm -r FBX2glTF-linux-x86_64
```

## Désinstallation détaillée

```bash
rm -r ~/.godot
sudo rm /usr/bin/godot
sudo rm /usr/bin/godot-dotnet  #selon votre version
sudo rm /usr/share/applications/godot.desktop
sudo rm /usr/share/applications/godot-dotnet.desktop #selon votre version
sudo update-desktop-database
```

## Compiler Godot soi-même

### Dépendances

```bash
# Emscripten
## créer on dossier local lib dans .godot
mkdir -p ~/.godot/localesLib
cd ~/.godot/localesLib
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
git pull
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
## Cacher le message de shell confirmant que EMSDK est bien en route
echo "" >> ~/.zshrc
echo "# Cacher l'alerte de EMSDK" >> ~/.zshrc
echo "export EMSDK_QUIET=1" >> ~/.zshrc
## Ajouter le chemin actuel au PATH la configuration de zsh dans .zshrc
echo "" >> ~/.zshrc
echo "# Ajouter le chemin actuel EMSDK au shell" >> ~/.zshrc
echo "source \"$PWD/emsdk_env.sh\"" >> ~/.zshrc
## Réactualiser le shell avec les derniers réglages ajoutés à .zshrc
source ~/.zshrc
## cmake en lib secondaire
sudo nala install -y cmake

# ------------------------------------------

# Pour installer python

sudo nala install -y python3

## Pour finir on installe pip3
sudo nala install -y python3-pip

# ------------------------------------------

# Pour installer SCons 3.0+

## Pour l'installer avec pop
pip install SCons

## Ajouter le chemin de .local/bin/ au PATH la configuration de zsh dans .zshrc
echo "" >> ~/.zshrc
echo "# Ajouter le chemin de .local/bin/ au shell" >> ~/.zshrc
echo 'export PATH="$HOME/.local/bin/:$PATH"' >> ~/.zshrc


## Réactualiser le shell avec les derniers réglages ajoutés à .zshrc
source ~/.zshrc
```

### Compilation

Vérifiez que emsdk est bien ajouté au path avec la commande `emsdk list`

A faire une autre fois pas le temps

utilisez scons avec ces commandes :

```bash
scons platform=web target=template_release
scons platform=web target=template_debug
```

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
