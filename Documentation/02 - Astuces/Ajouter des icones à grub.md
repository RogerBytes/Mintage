# Ajouter des icones à grub

Les icones sont dans `/boot/grub/themes/calmgrub/icons`

Par exemple pour android il faut mettre dans ce dossier une icone android.

Donc dans "/etc/grub.d/40_custom" pour le fichier d'entrée pour un script custom (comme bliss os ou android)

```bash
menuentry "Android" --class android {
    set SOURCE_NAME="blissos" search --set=root --file /blissos/kernel
    linux /blissos/kernel FFMPEG_CODEC=1 FFMPEG_PREFER_C2=1 quiet root=/dev/ram0 SRC=/blissos
    initrd /blissos/initrd.img
}
```

On remarche --class android.
Donc dans le dossier "/boot/grub/themes/calmgrub/icons" il faut y ajouter un fichier "android.png", une fois copier on peut reboot
