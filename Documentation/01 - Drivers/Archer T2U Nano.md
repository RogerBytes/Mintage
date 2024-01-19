# Driver Archer T2U Nano

## Dépendances

```bash
sudo nala install -y dkms git build-essential libelf-dev linux-headers-$(uname -r)
```

## Compilation

Permet d'installer le driver

```bash
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl88*
sudo make dkms_install
```
