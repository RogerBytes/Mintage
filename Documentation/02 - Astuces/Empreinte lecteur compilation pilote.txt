Partie 1 Compilation

1/a Dépendances
sudo nala install -y git meson ninja-build libglib2.0-dev libgusb-dev libpam0g-dev libpolkit-gobject-1-dev libsystemd-dev libusb-1.0-0-dev gobject-introspection gir1.2-gusb-1.0 libcairo2-dev libnss3-dev libgudev-1.0-dev gtk-doc-tools cmake openssl libssl-dev fprintd libpam-fprintd gir1.2-fprint-2.0

1/b Compilation et installation
git clone https://gitlab.freedesktop.org/geodic/libfprint.git
cd libfprint

meson builddir
ninja -C builddir
sudo ninja -C builddir install
sudo ldconfig
cd
sudo rm -r libfprint

-------------------------------


Partie 2 Initialisation

Enregistrer son doigt
fprintd-enroll
--- mettre son index sur le lecteur


sudo pam-auth-update
- tout activer, c'est les options de connexion avec le lecteur d'empreinte

Pour bien vérifier qu'on a son doigt enregistré
fprintd-list $USER

Il doit retourner à la fin :
 - #0: right-index-finger


-------------------------------


Partie 3 Utilisation

Pour retirer un doigt (ne peut enregistrer qu'un doigt)

fprintd-delete $USER

Pour en remettre un
fprintd-enroll

sudo pam-auth-update




Pour bien vérifier qu'on a son doigt enregistré
fprintd-list $USER

Il doit retourner à la fin :
 - #0: right-index-finger
