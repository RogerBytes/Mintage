#!/bin/bash

TEMP_FILE="/tmp/lutris_games.txt"
ICONS_DIR="$HOME/.local/share/icons/hicolor/128x128/apps"  # Répertoire des icônes à vérifier
DEFAULT_ICON="/usr/share/icons/Adwaita/scalable/devices/input-gaming.svg"  # Icône générique
DESKTOP_DIR=$(xdg-user-dir DESKTOP)
LAUNCHERS_DIR="$DESKTOP_DIR/Lutris_Launchers"

# Partie 1: Extraction des informations dans un fichier temporaire
echo "Extraction des informations des jeux de Lutris..."
lutris -l > /tmp/lutris_games.txt
echo "Extraction terminée. Fichier temporaire créé : /tmp/lutris_games.txt"

# Vérifier si le fichier temporaire existe
if [ ! -f "$TEMP_FILE" ]; then
    echo "Erreur : le fichier temporaire n'existe pas. Exécutez d'abord l'extraction."
    exit 1
fi

# Créer le dossier des lanceurs s'il n'existe pas
mkdir -p "$LAUNCHERS_DIR"

# Lire chaque ligne du fichier et générer un lanceur
echo "Génération des lanceurs..."
while IFS='|' read -r id name slug runner path; do
    # Nettoyer les espaces inutiles avec sed
    id=$(echo "$id" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    name=$(echo "$name" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    slug=$(echo "$slug" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    runner=$(echo "$runner" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    path=$(echo "$path" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

    # Vérification si le nom est vide
    if [ -z "$name" ]; then
        echo "Erreur : le nom du jeu est vide. Ligne ignorée."
        continue
    fi

    # Nettoyer le nom pour éviter les caractères non valides dans les noms de fichiers
    sanitized_name=$(echo "$name" | tr -d "'" | tr ' ' '_')

    # Débogage : afficher les valeurs extraites
    echo "ID: $id - Nom: $name - Nom nettoyé: $sanitized_name"

    # Recherche de l'icône personnalisée dans le répertoire correct
    icon_file="lutris_${slug}.png"  # Nom de l'icône basée sur le slug
    icon_path="$ICONS_DIR/$icon_file"  # Chemin vers l'icône personnalisée

    # Si l'icône personnalisée existe, on l'utilise, sinon on utilise l'icône générique
    if [ -f "$icon_path" ]; then
        icon_to_use="$icon_path"
    else
        icon_to_use="$DEFAULT_ICON"
    fi

    # Chemin du fichier lanceur
    desktop_file="$LAUNCHERS_DIR/$sanitized_name.desktop"

    # Création du fichier .desktop
    cat > "$desktop_file" <<EOF
[Desktop Entry]
Name=$sanitized_name
Exec=lutris lutris:rungameid/$id
Icon=$icon_to_use
Type=Application
Categories=Game;
EOF

    # Rendre le fichier exécutable
    chmod +x "$desktop_file"

    echo "Lanceur créé : $desktop_file avec icône : $icon_to_use"

done < "$TEMP_FILE"

echo "Génération terminée. Tous les lanceurs sont dans $LAUNCHERS_DIR"
