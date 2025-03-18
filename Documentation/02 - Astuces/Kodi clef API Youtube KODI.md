
Voici le fichier "clef api youtube.txt"
```txt
API KEY :  
XxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxX

CLIENT ID : (on enlève "apps.googleusercontent.com" à la fin)  
010101010101-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

CLIENT SECRET :  
XXXXXX-XxXxXxXxXxXxXxXxXxXxXxXxXxXx
```


0 - Prérequis :

- Avoir un compte google

- Aller sur  
    https://console.cloud.google.com/apis/

    Acceptez les conditions et continuez

    Vérifiez bien d'être sur le bon compte en haut à droite

1 - Créer un projet

- Cliquez sur le bouton "Créer un projet" en haut à droite (en étant bien sûr "API et services activés")
- Dans nom du projet mettre "Kodi-YouTube", ne changez pas la "Zone", cliquez sur "Créer".

2 - Récuperer la clef API

- Allez dans la section "Bibliothèque", choisissez votre projet "Kodi-YouTube"
- Descendez et cliquez sur "YouTube Data API v3" et cliquez sur "Activer", et en haut à droite, cliquer sur "Créer des identifiants"
- Dans "Sélectionner une API" il faut avoir choisi "YouTube Data API v3" et choisissez l'option "Données publiques" et cliquez sur "Suivant" puis "RESTRICT KEY"
- dans "Restrictions relatives aux API" choisissez "Restreindre la clé"
- dans "Select API" en dessous, choisissez "YouTube Data API v3"
- Choisissez l'option "Données publiques" et cliquez sur "Suivant"
- Copiez la clef dans "clef api youtube.txt" et cliquez sur "OK"

3 - ID Client et code secret du client

- Allez dans la section "Écran de consentement OAuth" en dessous de "Identifiants"
- Choisir "Externe" puis "Créer", dans nom de l'application, mettre "Kodi-YouTube" et juste en dessous mettez l'adresse mail de ce compte, pareil en bas dans "Coordonnées du développeur" et cliquez sur "Enregistrer et continuer"
- Sur la page suivante (Niveau d'accès) allez en bas et cliquez sur "Enregistrer et continuer"
- Sur la page suivante (Utilisateurs tests) cliquez sur "+ ADD USERS" mettez le mail du compte et "AJOUTER", allez en bas et cliquez sur "Enregistrer et continuer"
- Sur la page suivante (Résumé) allez en bas et cliquez sur "Revenir au tableau de bord"
- Choisir "Identifiants" sur le tableau de bord et (en haut) cliquez sur "Créer des identifiants" et choisir "ID client OAuth" dans le sous menu
- Dans le type d'application, choisir "Périphériques d'entrée TV et limitée", vous pouvez laisser le nom par défaut (le changer est facultatif) et cliquez sur "Créer"
- dans un popup apparait votre "ID client" (virer ".apps.googleusercontent.com" de l'id) et votre "code secret du client", copiez les dans votre "clef api youtube.txt".



4 - Résumé des infos

Pour "API KEY" :  
Allez dans "identifiants" dans la ligne "Clés API" et "AFFICHER LA CLÉ"
Pour "CLIENT ID" :  
Allez dans "identifiants" dans la ligne "ID clients OAuth 2.0" et cliquer sur le nom (par défaut "Client TV 1") dans "Additional information" l'info se trouve dans  
ID client

Pour "CLIENT SECRET" :  
Allez dans "identifiants" dans la ligne "ID clients OAuth 2.0" et cliquer sur le nom (par défaut "Client TV 1") dans "Additional information" l'info se trouve dans  
Code secret du client

5 - Le fichier JSON

Voici le fichier "api_keys.json"
```json
{
    "keys": {
        "developer": {},
        "personal": {
            "api_key": "",
            "client_id": "",
            "client_secret": ""
        }
    }
}
```
