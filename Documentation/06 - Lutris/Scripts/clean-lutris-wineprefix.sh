#!/bin/bash

games=($(lutris --list-games | grep -i wine | awk -F'|' '{print $3}' | sed 's/^[ \t]*//;s/[ \t]*$//'))
games_dir="$HOME/Games"

# Parcourir les dossiers dans $games_dir
for dir in "$games_dir"/*; do
  # Extraire le nom du dossier (slug)
  dir_name=$(basename "$dir")

  # Vérifier si le dossier est dans la liste des jeux
  if [[ ! " ${games[@]} " =~ " ${dir_name} " ]]; then
    # Si le dossier n'est pas dans la liste, le supprimer
    echo "Suppression du dossier : $dir"
    rm -rf "$dir"
  fi
done
