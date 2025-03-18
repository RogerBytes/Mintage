# Solution à tester en premier

Si vous avez des problèmes étranges, il se peut qu'un paquet une source de paquet soit en cause.

Voici un protocole qui permet d'éviter ce genre de souci (afin d'évacuer cette possibilité)

Ouvrez le gestionnaire de mise à jour

```bash
mintupdate
```

Allez dans "Edition/Sources de logiciels", allez ensuite dans "Maintenance" et faites

- Corriger les problèmes de MergeList
- Ajouter des clés manquantes, si certaines clés ne sont pas trouvables il faut supprimer la source du logiciel

Dans "Maintenance" cliquez sur l'option "Supprimer les sources dupliquées"

Si le problème est encore présent, allez dans "Dépôts supplémentaires" pour vérifier s'il n'y a pas un dépôt en double à supprimer.

## Supprimer une source de logiciel

Ouvrez "Gestionnaire de mises à jour" et allez dans "Edition/Sources de logiciels", allez ensuite dans "Dépôts supplémentaires" et décochez la source en question, ici je décoche "linuxmirrors.ir"
