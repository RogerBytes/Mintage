#!/bin/bash
# Script pour lancer un .jnlp avec l'ancien Java 1.8

# Chemin vers l'ancien JRE
OLD_JRE="/usr/lib/jvm/jre1.8.0_351/bin/javaws"

# Vérifie si javaws existe
if [ ! -x "$OLD_JRE" ]; then
    echo "Erreur : javaws introuvable dans $OLD_JRE"
    exit 1
fi

# Vérifie si un fichier est passé en argument
if [ -z "$1" ]; then
    read -p "Entrez le chemin du fichier .jnlp à ouvrir : " JNLP_FILE
else
    JNLP_FILE="$1"
fi

# Vérifie que le fichier existe
if [ ! -f "$JNLP_FILE" ]; then
    echo "Erreur : fichier $JNLP_FILE introuvable"
    exit 1
fi

# Lance le fichier avec l'ancien Java
"$OLD_JRE" "$JNLP_FILE"
