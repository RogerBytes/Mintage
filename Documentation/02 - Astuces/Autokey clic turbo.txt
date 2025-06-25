https://linuxaria.com/pills/automate-your-common-tasks-on-linux-with-autokey
https://github.com/autokey/autokey/wiki/Beginners-Guide
https://forums.linuxmint.com/viewtopic.php?t=294639

Installer autokey
sudo nala install -y autokey-gtk

1. Créer un dossier pour nos scripts perso, perso je créé un dossier "Scripts AutoKey" dans mon dossier ~/Documents/Logiciel/ :
mkdir -p "$HOME/Documents/Logiciel/Scripts AutoKey"


Dans AutoKey maintenant :
Cliquer sur "Nouveau" : Folder/ Allez dans le dossier choisi, donner un nom ici "Scripts" et valider

Ensuite
Cliquer sur "Nouveau" : Script/ le nommer "Rapid Fire"

Dans le bloc de code (à droite), coller :


mouse.click_relative_self(0, 0, 1)



Il fera dans les 33 clics par secondes

---

Dans la partie du bas, il faut cliquer sur le "Set" à côté de Hotkey, puis sur le bouton "Press to Set" (puis Valider) pour désigner sur quelle touche on veut l'attribuer

Cliquer sur Save, et voilà le script est bind et fonctionnel.

Idéal si vous avez bin une touche sur un bouton souris, par exemple j'ai bind F13 sur ma souris

ou dans ckb next, dans l'onglet program
xdg-open /home/rogerbytes/Documents/Logiciel/Scripts AutoKey/Scripts/Rapid Fire.py


1 &
2 É
3 "
4 '
5 (
6 -
7 È
8 _
9 Ç
0 À
1 )
2 =
