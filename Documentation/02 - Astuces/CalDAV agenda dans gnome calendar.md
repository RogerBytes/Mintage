# Agenda CalDAV dans gnome calendar

Cette documentation permet d'importer les agenda CalDAV depuis Thunderbird.
Le système sera ainsi synchronisé correctement avec vos agendas.
Normalement le calendrier nécessite d'installer Evolution (un client de mail), mais ici l'on peut s'en passer.

## Prérequis

Il faut avoir ajouté vos agenda CalDAV dans Thunderbird, sinon il n'importera rien.  
Aucune dépendances pour lancer le script zsh (il se charge de les installer au besoin).  
zsh est déjà installé par Mintage (pas besoin d'installer à nouveau).

## Ajout des calendrier

Rendre exécutable le script avec la commande

```bash
chmod +x "$HOME/Local/Git/Documentation/02 - Astuces/scripts/caldav-setup.sh"
```

Puis on l'execute avec :

```bash
"$HOME/Local/Git/Documentation/02 - Astuces/scripts/caldav-setup.sh"
```

Il suffit de suivre les instructions pour que vos agendas soient ajoutés.

Pour terminer la configuration de vos agendas CalDAV, vous devez redémarrer votre ordinateur"

```bash
reboot
```

Après le reboot, lancez "Agenda"

```bash
gnome-calendar
```

Il demandera d'entrer vos mots de passe et activera la synchronisation des agendas.
