Ventoy permet d'ajouter facilement des ISO pour différentes architectures (AMD64, ARM, etc.) sur la même clé USB, il suffit de copier les ISO correspondants et de choisir celui adapté lors du démarrage.


1 Téléchargement
https://www.ventoy.net/en/download.html
Prenez le *.tar.gz
Ne prenez pas "ventoy-x.x.xx-livecd.iso", c'est pour un autre usage.
Décompresser l'archive *.tar.gz téléchargée.


2 Lancer l'installation
Lancer le programme Ventoy2Disk par le terminal :
sudo ./VentoyWeb.sh
Et CTRL-cliquez sur le lien du terminal

Dans language, choisir "Français"
Dans Option décochez "Secure Boot"
Dans Option/Partition choisissez GPT

Sélectionner la clé USB dans la liste dans l'encadré "Périphérique" et cliquer sur "Installation" (attention ça efface tout).


3 Utilisation

Sur votre bureau, faites un dossier nommé "isofiles" et copiez-y votre *.iso/*.img.
Changez la valeur de variable ISO_NAME avec le nom de votre fichier et copiez/collez le bloc de code.
ATTENTION A BIEN LIRE L'ETAPE 4 AUSSI

ISO_NAME="archlinux-2025.04.01-x86_64.iso"
ISO_ORIG="$(xdg-user-dir DESKTOP)/isofiles/$ISO_NAME"
ISO_USB="/media/$(whoami)/Ventoy/$ISO_NAME"

cp "$ISO_ORIG" "/media/$(whoami)/Ventoy/"

if [ "$(sha256sum "$ISO_ORIG" | awk '{print $1}')" = "$(sha256sum "$ISO_USB" | awk '{print $1}')" ]; then
    echo -e "\e[32mOK : la copie du fichier est un succès\e[0m"
else
    echo -e "\e[31mERREUR : la copie du fichier a rencontré une erreur\e[0m"
fi


4 Debrancher sa clef

Lancez l'ejection de la cle usb ventoy, mais ATTENTION, il ne faut pas la débrancher immédiatement, sous peine de corrompre les données.

Dans le terminal il faut faire la commande
sync
Quand la commande sera finie, enlever la clef usb de l'ordinateur

Attention, cela peut prendre jusqu'à une dizaine de minutes selon la taille de l'iso (il faut vraiment attendre la fin de la vérification).


5 Sites pour les iso de distributions

https://linuxmint.com/
https://libreelec.tv/
https://batocera.org/
https://massgrave.dev/genuine-installation-media
https://archlinux.org/download/

.
