#!/bin/bash

# Parcourt tous les sous-répertoires du dossier courant
for dir in */; do
    # Vérifie si push.sh existe dans le sous-dossier
    if [ -f "$dir/push.sh" ]; then
        echo "Exécution de push.sh dans $dir"
        (cd "$dir" && bash push.sh)
    else
        echo "Pas de push.sh dans $dir"
    fi
done

echo "Tous les push.sh ont été exécutés"
