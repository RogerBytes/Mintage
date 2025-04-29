# Pilote nvidia

ATTENTION CA PEUT CASSER VOTRE AFFICHAGE A EVITER

DANS CE CAS IL FAUT ENTRE EN COMMANDE AVEC CTRL+SHIFT+F2
mettre son nom d'user et son mdp

et faire

sudo apt purge '^nvidia-.*'
sudo apt install --reinstall xserver-xorg-core xserver-xorg-video-all
sudo update-initramfs -u

puis terminer avec
sudo reboot


Ensuite chercher (550 c'est celui que j'avais sur le site)

sudo nala search nvidia-driver-550

retourne :
nvidia-driver-550 550.120-0ubuntu0.24.04.1 [Ubuntu/noble restricted]
└── NVIDIA driver metapackage
nvidia-driver-550-open 550.120-0ubuntu0.24.04.1 [Ubuntu/noble multiverse]
└── NVIDIA driver (open kernel) metapackage
nvidia-driver-550-server 550.127.05-0ubuntu0.24.04.1 [Ubuntu/noble multiverse]
└── NVIDIA Server Driver metapackage
nvidia-driver-550-server-open 550.127.05-0ubuntu0.24.04.1 [Ubuntu/noble multiverse]
└── NVIDIA driver (open kernel) metapackage

sudo nala install -y nvidia-driver-550

après redémarrage verifié que c'ets bien installé avec :
nvidia-smi



## Sur le site

https://www.nvidia.com/fr-fr/drivers/

Pour savoir votre carte dans un terminal, faites `neofetch`



OS: Linux Mint 22 x86_64
Host: MS-7C37 1.0
Kernel: 6.8.0-48-generic
Uptime: 16 hours, 50 mins
Packages: 3399 (dpkg), 24 (flatpak)
Shell: zsh 5.9
Resolution: 1920x1080, 1920x1080, 25
DE: Cinnamon 6.2.9
WM: Mutter (Muffin)
WM Theme: Mint-L-Dark-Blue (Mint-Y)
Theme: Mint-L-Dark-Blue [GTK2/3]
Icons: Mint-L-Blue [GTK2/3]
Terminal: tilix
CPU: AMD Ryzen 7 3800X (16) @ 4.248G
GPU: NVIDIA GeForce RTX 2080 Ti Rev.
Memory: 8576MiB / 32035MiB

On s'interesse dans notre cas aux lignes :
OS: Linux Mint 22 x86_64
GPU: NVIDIA GeForce RTX 2080 Ti Rev.

La première indique qu'on est en x86_64 et la deuxième le modèle de la carte graphique.

Donc on va remplir ces champs :

Séléctionner catégorie du produit

Sélectionner série du produit

Sélectionner produit

Sélectionner système d'exploitation

Français


Donc ça fait :

GeForce

GeForce RTX 20 Series

GeForce RTX 2080 Ti

Linux 64-Bit

Français


Puis valider en cliquant sur "Trouver"


Cliquez sur le bouton "voir" à coté du driver, puis "Télécharger"


Une fois le fichier "*.run" télécharger on peut l'installer


On le rend executable avec :

chmod +x *.run

et on le lance avec :

sudo ./*.run
