
ATTENTION C'est sup^primer l'historique distant pour le remplacer par le local
git push origin master --force



Si tu veux annuler il faut faire un git log sur le distant pour identifier le dernier commit avant le push sur le distant


git log origin/master

❯ git log origin/master

commit 4fb110ebda10d56b25c71cb5e4e2621fe0a41ffb (origin/master, origin/HEAD)
Author: Harry Richmond <rogerbytes@vivaldi.net>
Date:   Sun May 5 02:28:49 2024 +0200

    no comment

commit 4dde902e2eadc5a82e63349fd02a43ae052f056d
Author: Harry Richmond <rogerbytes@vivaldi.net>
Date:   Sat May 4 11:27:08 2024 +0200

    no comment

commit 8cc25baf822cb8874eae6f5aa1c25ad1d0bb26af
Author: RogerBytes <rogerbytes@vivaldi.net>
Date:   Fri Apr 26 16:08:54 2024 +0200

    no comment

commit 3cfefd9283510c1f67d7413f937043d687ab5475 (tag: wine-pkg)
Author: RogerBytes <rogerbytes@vivaldi.net>
Date:   Fri Mar 1 16:09:10 2024 +0100

    no comment
:


Le pluys récent en haut

ensuite on utilise la cxommande

git push origin <commit-id>:master --force



Ce qui donne :
git push origin 4fb110ebda10d56b25c71cb5e4e2621fe0a41ffb:master --force





Et pour forcer  un pull (si le distant est à jour est qu'on se moque de perdre ce qu'il y a en local)

git reset --hard origin/master
