# Scrcpy - Mirroir d'android sur l'ordi

On va compiler [scrcpy](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md), puis l'installer (afin de bénéficier de l'audio).

## Dépendances

```bash
# for Debian/Ubuntu
sudo nala install -y ffmpeg libsdl2-2.0-0 adb wget \
                 gcc git pkg-config meson ninja-build libsdl2-dev \
                 libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
                 libswresample-dev libusb-1.0-0 libusb-1.0-0-dev
```

On le télécharger et on l'installe

```bash
git clone https://github.com/Genymobile/scrcpy
cd scrcpy
./install_release.sh
```
