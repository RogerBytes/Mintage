#!/usr/bin/env bash
set -euo pipefail

# Config
REPO="RogerBytes/Mintage"
BUILD_ROOT="build"
TEMP_DIR="$BUILD_ROOT/Mintage"

# 1) Récupérer la dernière release GitHub
LATEST_TAG=$(curl --silent "https://api.github.com/repos/$REPO/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
if [[ -z "$LATEST_TAG" ]]; then
  echo "Erreur : impossible de récupérer la dernière release GitHub." >&2
  exit 1
fi

# 2) Extraire version et incrémenter patch
# suppose que le tag est au format vX.Y.Z
VER=${LATEST_TAG#v}
IFS='.' read -r MAJ MIN PATCH <<< "$VER"
NEXT_PATCH=$((PATCH + 1))
NEXT_VERSION="v$MAJ.$MIN.$NEXT_PATCH"
ARCHIVE_NAME="Mintage-$NEXT_VERSION.tar.gz"

echo "Dernière version trouvée : $LATEST_TAG → Nouvelle version : $NEXT_VERSION"

# 3) Créer le dossier temporaire

mkdir -p "$TEMP_DIR"

# 4) Copier les dossiers/fichiers souhaités
INCLUDE_DIRS=("assets" "scripts")
INCLUDE_FILES=("install.sh" "README.md" ".hidden")

for d in "${INCLUDE_DIRS[@]}"; do
  cp -r "$d" "$TEMP_DIR/" 2>/dev/null || echo "Avert : dossier '$d' non trouvé"
done
for f in "${INCLUDE_FILES[@]}"; do
  cp "$f" "$TEMP_DIR/" 2>/dev/null || echo "Avert : fichier '$f' non trouvé"
done

# 5) Créer l’archive
tar -czf "$BUILD_ROOT/$ARCHIVE_NAME" -C "$BUILD_ROOT" "Mintage"

# 6) Supprimer le dossier temporaire
rm -rf "$TEMP_DIR"

echo "Archive générée : $BUILD_ROOT/$ARCHIVE_NAME"

