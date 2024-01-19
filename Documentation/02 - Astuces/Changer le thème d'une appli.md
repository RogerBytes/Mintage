# Changer le thème d'une appli

Dans mon exemple j'utilise un thème sombre (mint-L-Dark-Blue) par défaut mais il ne f'affiche pas correctement sur une application.  
Dans ce cas il vaut mieux utiliser Breeze, car le thème clair de mint-L-Blue risque de ne pas s'appliquer correctement sur une application.

L'application se trouve dans/usr/share/applications/

Ouvrir nemo en mode superutilisateur, clic droit sur l'application/ouvrir avec/Editeur de texte

Cherchez la ligne qui commence par :  
`Exec=`

Par exemple  
`Exec=algobox %F`

Et juste après `Exec=`,  insérez (sans effacer la suite de la ligne)  
`env GTK_THEME=<theme-name> `
(attention à bien mettre un espace derrière le nom du thème)

par exemple ça donne :  
`Exec=env GTK_THEME=Breeze algobox %F`

## Pour une application qt5

Si ça ne marche pas au dessus, vérifiez si c'est une interface qt5, si c'est le cas voici ce qu'il faut faire :  

`Exec=algobox %F -style "Breeze"`

## Pour une application GTK2

Si ça ne marche pas au dessus, vérifiez si c'est une interface GKT2, si c'est le cas voici ce qu'il faut faire :  
Ajoutez
`GTK_THEME=Breeze`
ou
`GTK2_RC_FILES=/usr/share/themes/Breeze/gtk-2.0/gtkrc`
