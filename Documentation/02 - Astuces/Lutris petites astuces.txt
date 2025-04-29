Activer/desactiver DXVK
Changer de version DXVK
Désactiver Esync
Désactiver Fsync
Désactiver Esync et Fsync
Changer de version de wine
Changer de version de wine et remettre celle d'origine
Limiter le nombre de coeur à 1 (ou plus)

Pour le launch.bat il faut des fois faire un cd dossier :
cd "C:\Games\Call of Juarez Bound in Blood"
avant de mettre l'executeur,
des fois il faut carrément fare la commande en mettant le chemin complet :
"C:\Games\Call of Juarez Bound in Blood\CoJBiBGame_x86.exe"

Aussi il y a différent dll à ajouter absolument pour faire fonctionner certains jeux
si vous voyez ces dll :
DDraw.dll
dinput.dll
D3D8.dll
D3D9.dll
D3DImm.dll
direct8.dll

En génral il faut les ajouter dans winecfg, dans l'onglet "Bibliothèques" dans "Nouveau remplacement pour" si vous voulez faire tourner certains mods, certains jeux

Toutes les version de dgvodoo supérieures àà 2.19.1 ne marcheront pas. Il faut utiliser cette version (avec le dossier MS la plupart du temps) ou le builtin.

Pour analyser un .lnk (avoir les argument etc) utilisez la commande
exiftool "short.lnk"


pour les goglog.ini, mettre "Public" pour l'user dans les chemins









TELEMTRIE

Par exemple dans
drive_c/users/steamuser/AppData/LocalLow/MagicDesignStudio/HaveANiceDeath/Unity/ba655d6c-ebc9-416c-a1d8-a6cf4d2197c1/


Voici le analaytics si vous tombez dessus, le config
{"analytics":{"enabled":true},"connect":{"limit_user_tracking":false,"player_opted_out":false,"enabled":true},"performance":{"enabled":true},"dynamic":{"coreBusinessMetrics":{"enabled":true,"timeToWaitForUserInfoS":60},"analytics":{"shouldCollectAutomation":true,"timeToWaitForUserInfoS":60}}}

mettez au lieu d'au dessus :
{"analytics":{"enabled":false},"connect":{"limit_user_tracking":true,"player_opted_out":true,"enabled":false},"performance":{"enabled":false},"dynamic":{"coreBusinessMetrics":{"enabled":false,"timeToWaitForUserInfoS":0},"analytics":{"shouldCollectAutomation":false,"timeToWaitForUserInfoS":0}}}
