Les étapes d'utilisation/premier réglages

https://keepassxc.org/download/#linux

sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo apt update
sudo nala install -y keepassxc



A/ Initialisation

1. Exporter les mots de passe de son navigateur en 1 fichier .csv
Dans vivaldi, aller dans
vivaldi:password-manager/settings
A coté de "Exporter des mots de passe" cliquer sur "Télécharger le fichier".

2. Il faut les faire passer dans firefox, puis dans bitwarden, (sinon ça fout le bordel).

3. Ouvrir KeePassXC et en bas à droite, cliquer sur "Importer d'un fichier Json bitwarden"
Continuer la démarche normalement et enregistrer votre fichier avec un mot de passe unique.

4. Intégration avec le navigateur

--------------------------

B/ Intégration avec le navigateur

1. Aller dans "Outils/Paramètres", dans la navbar de gauche, cliquer sur "Intégration aux navigateurs" et cocher "Activer l'intégration aux navigateurs" et activer les navigateurs.

Relancer le navigateur
Cliquer sur l'icone de KeePassXC-Browser (qui est devenue verte) et sur "Connecter"
Ca ouvre un prompt, il vous demande de nommer l'association, par exemple je mets "floorp-perso" (attention à ne pas utiliser un existant, ça remplacera l'association), puis "Enregistrer".


Page de troubleshoot
https://github.com/keepassxreboot/keepassxc-browser/wiki/Troubleshooting-guide

Voilà, il est correctement initialisé

--------------------------

C/ Sur android

Dans KeePassXC allez dans "Base de données/Enregistrer la base de données sous/Mots de passe android.kdbx" et l'envoyer sur votre android.
Via fdroid télécharger "KeePassDX" et importez le fichier *.kdbx.
Importez le fichier, rien de spécial au niveau de l'utilisation, il prend aussi en charge des options en plus, comme les empreintes digitales.


.
