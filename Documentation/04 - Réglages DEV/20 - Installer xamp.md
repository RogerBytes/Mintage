# Symphony

Prérequis pour installer symphony

## Installer XAMPP

```bash
sudo nala install -y php git
```

Il faut minimum la version 8 de php.

Installer xampp <https://sourceforge.net/projects/xampp/files/>

```bash
wget https://deac-ams.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run
sudo chmod 755 xampp-linux-x64-*-installer.run
sudo ./xampp-linux-x64-*-installer.run
```

Cliquez sur "Suivant" dans l'interface pour poursuivre l'installation
Chez moi il reste longtemps bloqué à 73%, et ensuite pareil à 100% : c'est normal, patience.

Supprimer ensuite l'installer

```bash
rm xampp-linux-x64-*-installer.run
```

htdoc (dossier de travail) au lieu de WWW

## Pour lancer xampp

```bash
sudo /etc/init.d/apache2 stop
sudo /opt/lampp/lampp start
#Ou via l'interface graphique.
sudo /opt/lampp/manager-linux-x64.run
```

Si vous avez le message `XAMPP: Starting Apache...fail.` (ou si via l'interface apache ne démarre pas)

Il vous faut quitter apache qui est déjà lancé (par défaut) sur votre session avec

```bash
sudo /etc/init.d/apache2 stop
```

Puis relancer le serveur xampp local.

Pour avoir accès au localhost de xampp (une fois lancé)
Je vais dans :
<http://127.0.0.1/dashboard/>

Pour installer composer
