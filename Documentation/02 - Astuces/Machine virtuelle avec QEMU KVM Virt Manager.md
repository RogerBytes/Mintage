# Machine virtuelle QEMU, KVM et Virt Manager

## Présentation

### QEMU + KVM

* Hyperviseur open-source ultra-performant, avec accélération matérielle via KVM (Kernel-based Virtual Machine).
* Supporte quasiment tous les OS invités.
* Très configurable, scripts, snapshots, passthrough GPU, etc.
* Interface en ligne de commande, mais souvent utilisé avec un GUI comme **Virt-Manager**.

### Virt-Manager

* Interface graphique simple pour gérer QEMU/KVM.

* Permet de créer, configurer, démarrer des VM facilement.

* Performances proches du natif grâce à KVM.

* Support matériel complet (CPU, GPU passthrough, USB, réseau).

* Stable et maintenu par la communauté Linux.

* Moins gourmand que VirtualBox en ressources.

### Intêret par rapport à VirtualBox etc

* Performances proches du natif grâce à KVM.
* Support matériel complet (CPU, GPU passthrough, USB, réseau).
* Stable et maintenu par la communauté Linux.
* Moins gourmand que VirtualBox en ressources.

## Dépendances

```bash
sudo nala update
sudo nala install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virt-manager virtiofsd samba
```

## Installation

### Ajouter sa session au groupe libvirt

```
sudo usermod -aG libvirt $USER
mkdir -p ~/Partage
sudo chown nobody:users ~/Partage
sudo chmod 2775 ~/Partage
```

### Activer libvirt et virtlogd

```
sudo systemctl enable --now libvirtd
sudo systemctl enable --now virtlogd
newgrp libvirt
```

Faire un redémmarage pour terminer l'installation.

## Utilisation

Après avoir téléchargé votre iso et l'avoir mis dans `~/Local/VMs/iso`

1. Lancez Virt-Manager :
   
   ```bash
   virt-manager
   ```
   
   ou recherchez "Gestionnaire de machines virtuelles" dans le menu.

2. Cliquez sur **Créer une nouvelle machine virtuelle**.

3. Choisissez **Média d'installation local (image ISO ou CD-ROM)**.

4. Cliquez sur **Parcourir**, puis **Parcourir en Local** et sélectionnez votre fichier ISO.

5. Cochez **Détecter automatiquement depuis la source/média d'installation** (ou choisissez manuellement Windows 10 si Tiny10 n'est pas reconnu).

6. Allouez la **RAM** (entre 25% et 50% de votre RAM) et le **nombre de cœurs CPU** ((entre 25% et 50% de vos CPU), s'il y a une demande de permission, cochez `Ne plus faire de demandes sur ces dossiers`  et cliquez sur `Oui`.

7. Créez un **disque virtuel**, vous pouvez augmenter la taille au besoin.

8. Finalisez la configuration :
   
   - Donnez un nom à la VM.
   - Si souhaité, activez **l’interface réseau en mode NAT** (recommandé pour accès Internet).

9. Cliquez sur **Terminer** pour démarrer la VM et lancer l'installation de l’OS.

---

Pour afficher les options de votre machine, il faut aller dans `Afficher/Détail`, `Afficher/Console` permet d'afficher l'écran.
Vérifier les options de RAM et que le CD d'ISO est bien coché au démarrage en cas de soucis lors de l'installation. 

Pour ajouter le dossier partagé

```bash
sudo tee -a /etc/samba/smb.conf >/dev/null <<EOF

[Partage]
   path = /home/%U/Partage
   browsable = yes
   read only = no
   create mask = 0664
   directory mask = 2775
   valid users = %U
EOF

sudo systemctl restart smbd
sudo systemctl enable smbd
```

Récupérer son ip avec

```bash
ip addr show virbr0 | grep -oP 'inet \K[\d\.]+'
```

il retourne `192.168.122.1` dans mon cas, donc 

Dans la machine windows : 
 * Ouvre l’explorateur de fichiers.
 * Clique sur **“Ce PC”** → **“Connecter un lecteur réseau”**.
 * Dossier :

```
\\192.168.122.1\Partage
```
 * Coche **“Se reconnecter à la connexion”**.
 * Quand demandé : entre ton **nom d’utilisateur Linux** et ton **mot de passe Samba**.


### Linux (Nautilus, Dolphin, etc.)

- Ouvre ton gestionnaire de fichiers.

- Dans la barre d’adresse, tape `smb://192.168.1.91/Partage` puis Entrée.

- Si besoin, entre tes identifiants Samba.

---

### macOS

- Dans Finder, clique sur **Aller** > **Se connecter au serveur…** (ou Cmd+K).

- Tape `smb://192.168.1.91/Partage` puis clique sur **Se connecter**.

- Identifie-toi avec ton utilisateur Samba si demandé.

---

## Créer un lanceur pour une VM

```
sudo virsh list --all
```

Trouver le nom de la machine dans la liste, par exemple `Windows10` chez moi.

et lancez avec `virsh start NOM_VM ; virt-manager --connect qemu:///system --show-domain-console NOM_VM ; virsh shutdown NOM_VM`
donc pour moi, pour ma vm "Windows10"

```
virsh start Windows10 ; virt-manager --connect qemu:///system --show-domain-console Windows10
```

Ensuite je créé un bin :

```
sudo tee /usr/local/bin/lancer-windows10.sh > /dev/null <<'EOF'
#!/bin/bash
virsh start Windows10
virt-manager --connect qemu:///system --show-domain-console Windows10
EOF

sudo chmod +x /usr/local/bin/lancer-windows10.sh

sudo tee /usr/share/applications/Windows10.desktop > /dev/null <<'EOF'
[Desktop Entry]
Type=Application
Name=Windows10 VM
Comment=Lancer Windows10 via Virt-Manager
Exec=/usr/local/bin/lancer-windows10.sh
Icon=computer
Terminal=false
Categories=Utility;
EOF
```






