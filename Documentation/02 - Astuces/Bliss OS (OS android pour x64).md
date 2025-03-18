# Bliss OS (OS android pour x64)

[Site officiel de Bliss OS](https://github.com/BlissRoms-x86), gràce à la [Doc de Bliss OS](https://docs.blissos.org/installation/manual-install-on-linux/). Ca ne sert à rien d'essayer Prime OS ou Phoenix OS, les projets sont mort et n'avaient pour unique but de vendre des machines.
Il y a d'autres versions plus récentes mais en beta, ici on est sur Bliss OS 15, voir [le site de bliss OS](https://blissos.org/index.html#download).


## Téléchargement

[Version GAPPS](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/Gapps/Generic/)

```bash
wget -O bliss.iso https://netcologne.dl.sourceforge.net/project/blissos-x86/Official/BlissOS15/Gapps/Generic/Bliss-v15.9-x86_64-OFFICIAL-gapps-20240114.iso
```

[Version FOSS](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/FOSS/Generic/)

```bash
wget -O bliss.iso https://freefr.dl.sourceforge.net/project/blissos-x86/Official/BlissOS15/FOSS/Generic/Bliss-v15.9-x86_64-OFFICIAL-foss-20240114.iso
```

## Installation

On créé un dossier "blissos" à la racine du système
On monte l'image disque
On copie les fichiers
On démonte l'image disque
On crée des entrées grub dans le fichier "/etc/grub.d/40_custom"
Et on crée la ram allouée (virtuellement)

```
sudo mkdir -p /blissos/data
sudo mount -o loop bliss.iso /mnt
sudo cp /mnt/initrd.img /mnt/kernel /mnt/system.* /blissos/
sudo umount /mnt

sudo bash -c 'cat << EOF >> /etc/grub.d/40_custom

menuentry "Android" --class android {
    set SOURCE_NAME="blissos" search --set=root --file /blissos/kernel
    linux /blissos/kernel FFMPEG_CODEC=1 FFMPEG_PREFER_C2=1 quiet root=/dev/ram0 SRC=/blissos
    initrd /blissos/initrd.img
}

EOF'
sudo update-grub

cd /blissos/data
sudo dd if=/dev/zero of=data.img bs=1 count=0 seek=8G
sudo mkfs.ext4 -F data.img
```


## Désinstaller

``bash
sudo bash -c 'cat > /etc/grub.d/40_custom' <<'EOF'
#!/bin/sh
exec tail -n +3 $0
# This file provides an easy way to add custom menu entries. Simply type the
# menu entries you want to add after this comment. Be careful not to change
# the 'exec tail' line above.
EOF
sudo update-grub
sudo rm -r /blissos
``
