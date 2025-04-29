# Réglage de thème Flatpak

## 1 copier un thème system sur la partie user

```bash
sudo cp -r /usr/share/icons/Mint-L-Blue ~/.icons/ && sudo cp -r /usr/share/themes/Mint-L-Dark-Blue ~/.themes/
```

## 2 donner accès à flatpak aux path utilisateur des icones et des themes

```bash
sudo flatpak override --filesystem=~/.icons && sudo flatpak override --filesystem=~/.themes
```

## 3 séléctionner le thème et le pack d'icone de flatpak

```bash
sudo flatpak override --env=GTK_THEME=Mint-L-Dark-Blue
sudo flatpak override --env=ICON_THEME=Mint-L-Blue
```

## 4 Ajouter le thème a chaque paquet flatpak

```bash
sudo flatpak override --filesystem=/usr/share/themes/ com.github.robertsanseries.ciano
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.robertsanseries.ciano
sudo flatpak override --filesystem=/usr/share/themes/ org.jdownloader.JDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue org.jdownloader.JDownloader
sudo flatpak override --filesystem=/usr/share/themes/ net.lutris.Lutris
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue net.lutris.Lutris
sudo flatpak override --filesystem=/usr/share/themes/ io.github.seadve.Mousai
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue io.github.seadve.Mousai
sudo flatpak override --filesystem=/usr/share/themes/ net.davidotek.pupgui2
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue net.davidotek.pupgui2
sudo flatpak override --filesystem=/usr/share/themes/ de.haeckerfelix.Shortwave
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.sweethome3d.Sweethome3d
sudo flatpak override --filesystem=/usr/share/themes/ com.github.unrud.VideoDownloader
sudo flatpak override --env GTK_THEME=Mint-L-Dark-Blue com.github.unrud.VideoDownloader
```

## 5 App qui n'affichent pas le thème

Mousai - io.github.seadve.Mousai
Shortwave - de.haeckerfelix.Shortwave
Téléchargeur de vidéo - com.github.unrud.VideoDownloader
Installer flatseal ne sert à rien, c'est de la bouse
