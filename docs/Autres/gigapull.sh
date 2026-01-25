#!/bin/bash

# Parcourt tous les sous-répertoires du dossier courant
for dir in */; do
    if [ -d "$dir/.git" ]; then
        echo "Git pull dans $dir"
        (cd "$dir" && git pull)
    else
        echo "Pas de dépôt Git dans $dir"
    fi
done

