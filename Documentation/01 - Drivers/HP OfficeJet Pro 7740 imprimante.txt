Pour le OfficeJet Pro 7740



sudo nala install -y hplip


Puis pour jumeler l'imprimante si elle est detectée sur le réseau
hp-setup





AUTRE BIDOUILLE APRES, ATTENTION CETTE IMPRIMANTE NE SUPPORTE PAS LE DOSSIER SAMBA








_________________________________

Je crée un dossier pour recevoir les scans
mkdir -p ~/Images/Scans

Je donne toutes les permissions avec :
sudo chmod 777 ~/Images/Scans

J'installa samba
sudo nala install -y samba

On modifie la configuration de samba (sudo nano /etc/samba/smb.conf)
echo -e "[Scans]\npath = %H/Images/Scans\nbrowsable = yes\nread only = no\nguest ok = yes" | sudo tee -a /etc/samba/smb.conf

(explication
on lui a ajouté ces lignes
[Scans]
path = %H/Images/Scans
browsable = yes
read only = no
guest ok = yes
fin explication)


On redémmarre samba
sudo systemctl restart smbd


on met à jour
sudo apt update && sudo apt upgrade hplip

Et dans le navigateur :
http://hp-device.local
http://192.168.1.16/

Pour le scan j'ai fais une application web :

https://192.168.1.16/#hId-pgWebScan


|||||||||||||||||||||||||||||||||||

Pour envoyer direct dans un dossier (ne marche pas pour l'instant



On récupère son ip
hostname -I

il retourne :
❯ hostname -I

192.168.1.110 2001:861:34c2:5bf0:24c2:4beb:6715:aa16 2001:861:34c2:5bf0:7d1f:42cd:bc61:5f8f

Mon ip c'est :
192.168.1.110


On crée son adresse samba (avec son IP après le @)
smb://ton_utilisateur@192.168.1.110/Scans
donc dans mon cas
smb://marie@192.168.1.110/Scans


se connecter
