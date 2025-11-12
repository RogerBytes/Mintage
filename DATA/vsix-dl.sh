#!/bin/bash

# Vérification de l'argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <publisher.extension_name>"
  exit 1
fi

itemName="$1"
publisher=$(echo "$itemName" | cut -d'.' -f1)
extension_name=$(echo "$itemName" | cut -d'.' -f2)

# Interroger l'API Marketplace pour récupérer les infos complètes
response=$(curl -s -H "Content-Type: application/json" \
-H "Accept: application/json;api-version=3.0-preview.1" \
"https://marketplace.visualstudio.com/_apis/public/gallery/extensionquery" \
--data-raw "{
  \"filters\": [{
    \"criteria\": [{\"filterType\": 7, \"value\": \"$itemName\"}]
  }],
  \"flags\": 914
}")

# Extraire la dernière version
version=$(echo "$response" | grep -oP '"version"\s*:\s*"\K[0-9.]+(?=")' | head -1)

if [ -z "$version" ]; then
  echo "Impossible de récupérer la version pour $itemName"
  exit 1
fi

# Construire l'URL VSIX et télécharger
vsix_url="https://${publisher,,}.gallery.vsassets.io/_apis/public/gallery/publisher/${publisher}/extension/${extension_name}/${version}/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage"

echo "Téléchargement de $extension_name version $version depuis $publisher..."
wget -O "${extension_name}-${version}.vsix" "$vsix_url"

