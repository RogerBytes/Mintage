# Carte son iMac 27

## Prérequis

Vérifier que

```bash
cat /proc/asound/card0/codec* | grep Codec
```

Retourne :

```bash
Codec: Cirrus Logic CS8409
Codec: Intel Kabylake HDMI
```

## Dépendances

```bash
sudo nala install -y linux-headers-$(uname -r)
```

## Compilation

Permet d'installer le driver

```bash
git clone https://github.com/egorenar/snd-hda-codec-cs8409.git
cd snd-hda-codec-cs8409
make
sudo make install
```

Une fois terminé lancer le reboot

```bash
reboot
```

## Autres infos

Les autres choses que j'ai testé (sans succès) avant

### Premier test

<https://www.linux.org/threads/solved-no-sound-card-detected.37680/>

Afficher mon driver

```bash
inxi -A | grep driver
```

Activer pulse audio

```bash
systemctl --user enable pulseaudio && systemctl --user start pulseaudio

```

### Second test

<https://askubuntu.com/questions/1243369/sound-card-not-detected-ubuntu-20-04-sof-audio-pci>

On édite le grub

```bash
sudo nano /etc/default/grub
```

On y ajoute pour forcer le démarage de carte son

```bash
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash snd_hda_intel.dmic_detect=0"
```

quitter sauver, puis

```bash
sudo update-grub
```

puis reboot

```bash
reboot
```
