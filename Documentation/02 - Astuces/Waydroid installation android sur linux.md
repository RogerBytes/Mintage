# Emulateur android

Depuis [la doc de Waydroid](https://docs.waydro.id/usage/install-on-desktops) et la [page officielle du script](https://github.com/casualsnek/waydroid_script).



## Installation

Comme son nom l'indique, waydroid fonctionne grâce à Wayland. Il nous faut donc installer Weston (qui permet d'utiliser wayland dans sa fenêtre, depuis un serveur local).

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>


### Installation de waydroid et weston

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

```bash
sudo nala install -y curl ca-certificates lzip python3.10-venv sqlite3
curl https://repo.waydro.id | sudo bash
sudo nala update
sudo nala install -y waydroid weston
sudo waydroid init -s GAPPS -f
```

Ensuite lancez weston et waydroid

```bash
weston
waydroid first-launch
```

### Récupérer son ID

```bash
git clone https://github.com/casualsnek/waydroid_script
cd waydroid_script
python3 -m venv venv
venv/bin/pip install -r requirements.txt
sudo venv/bin/python3 main.py certified
```

Ca retourne

```bash
XXXXXXXXXXXXXXXXXXX
   ^----- Open https://google.com/android/uncertified/?pli=1
          Login with your google id then submit the form with id shown above
```

Ouvrez le lien de [la page d'enregistrement de Google'](https://www.google.com/android/uncertified/?pli=1) en faisant "CTRL+Clic gauche".

Et entrez votre android id "XXXXXXXXXXXXXXXXXXX"

Si au bout de 2 ou 3 redémmarages il y a toujours l'alerte de signature, il faut bien attendre 15 minutes (pour que l'appareil soit bien enregistré), ensuite fermez et relancez waydroid.

Au reboot, il y aura une notification qui propose de compléter l'installation "Waydroid x86_64 Device setup in progress - Tap to finish Waydroid x86_64 Device setup".
Complétez l'installation en connectant votre compte.

</details>


### Installation approfondie

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

```bash
sudo venv/bin/python3 main.py install gapps
```

Ensuite

```bash
sudo venv/bin/python3 main.py install magisk
```

-> Ouvez "Magisk Delta", faites l'update APP, puis la deuxième (celle du haut en choisissant "Direct Install(modify / system directly)")

Si vous avez un CPU intel (marche sur amd aussi)

```bash
sudo venv/bin/python3 main.py install libhoudini
```

Ensuite

```bash
sudo venv/bin/python3 main.py install smartdock
```

Ensuite

```bash
sudo venv/bin/python3 main.py install widevine
```

Puis

```bash
sudo venv/bin/python3 main.py hack hidestatusbar
```

Si vous avez un CPU amd, vous pouvez utilisez libnk au lieu de libhoudini

```bash
sudo venv/bin/python3 main.py uninstall libhoudini
sudo venv/bin/python3 main.py install libndk
```

Plus besoin d'installer MicroG

```bash
sudo venv/bin/python3 main.py install microg
```

</details>

### Installer MiXplorer, Material Files, Aurora Store et Droid-ify

```bash
wget https://github.com/RogerBytes/Androigy/releases/download/v0.0.1-data/Aurora_Store_4.2.5.apk
waydroid app install Aurora_Store_4.2.5.apk
wget https://f-droid.org/repo/com.looker.droidify_610.apk
waydroid app install com.looker.droidify_610.apk
wget https://github.com/RogerBytes/Androigy/releases/download/v0.0.1-data/MiXplorer_v6.64.3_B23090710.apk
waydroid app install MiXplorer_v6.64.3_B23090710.apk
wget https://f-droid.org/repo/me.zhanghai.android.files_34.apk
waydroid app install me.zhanghai.android.files_34.apk
rm com.looker.droidify_610.apk
rm Aurora_Store_4.2.5.apk
rm MiXplorer_v6.64.3_B23090710.apk
rm me.zhanghai.android.files_34.apk
```

</details>

## Désinstallation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Désinstaller Waydroid

```bash
sudo waydroid session stop
sudo waydroid container stop
sudo apt remove -y waydroid
sudo rm -rf /var/lib/waydroid /home/.waydroid ~/waydroid ~/.share/waydroid ~/.local/share/applications/*aydroid* ~/.local/share/waydroid
```

</details>

## Utilisation de Waydroid

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

## Utilisation de Waydroid

Pour utiliser android sur votre système, il faut passer par weston, en le lançant par un shell.

```bash
weston
```

Redimmensionnez la fenêtre à la dimension souhaitée (ne sera plus possible après), puis faites :

```bash
waydroid session stop; waydroid show-full-ui
```

### Accèder au système android

Le chemin pour y aller est

```bash
~/.local/share/waydroid/data/
```

Et aller dans le dossier `media` (il est protégé, on ne peut y aller directement)


### se connecter via ADB

Trouver l'ip de waydroid dans `Paramètres\A propos du téléphone\Adresse IP`
Chez moi c'est `192.168.240.112`

La commande c'est

```bash
adb connect <IP>:5555
```

Donc chez moi c'est

```bash
adb connect 192.168.240.112:5555
```

### Arrêter waydroid

Fermez la fenêtre de weston, puis dans un shell

```bash
waydroid session stop
```

### Installer un apk depuis linux

Voici un exemple, vous n'êtes pas obligé de télécharger via un wget. Il faut que w

```bash
wget https://github.com/RogerBytes/Androigy/releases/download/v0.0.1-data/Aurora_Store_4.2.5.apk
waydroid app install Aurora_Store_4.2.5.apk
rm Aurora_Store_4.2.5.apk
```

### IMPORTANT (enfin a tester surtout) Donner les accès A CHAQUE INSTALLATION

On rentre dans l'invite de commande de waydroid_script

```bash
sudo waydroid shell
```

Puis :

```bash
chmod 777 -R /sdcard/Android;
chmod 777 -R /data/media/0/Android;
chmod 777 -R /sdcard/Android/data;
chmod 777 -R /data/media/0/Android/obb;
chmod 777 -R /mnt/*/*/*/*/Android/data;
chmod 777 -R /mnt/*/*/*/*/Android/obb;
exit;
```

Jeux
Arknights, PUNISHING: GRAY RAVEN

### Bazar d'accès aux fichiers

```bash
git clone https://github.com/casualsnek/waydroid_script
cd waydroid_script
python3 -m venv venv
sudo venv/bin/python3 main.py hack nodataperm
cd && rm waydroid_script
```

Si ca provoque un bootloop

```bash
sudo venv/bin/python3 main.py uninstall nodataperm
```

### Partage de dossiers avec le système

[Voici une page qui explique](https://docs.waydro.id/faq/setting-up-a-shared-folder)

```bash
mkdir -p ~/Local/Partage\ Waydroid
sudo mount --bind ~/Local/Partage\ Waydroid ~/.local/share/waydroid/data/media/0/Download
```

</details>
