#!/bin/bash

version="proton-ge-9-20-x86_64"
extension=".tar.zst"
filename="${version}${extension}"
host_link="https://github.com/RogerBytes/Mintage/releases/download/wine-pkg"
extract_path="$HOME/.local/share/lutris/runners/wine"
download_link="${host_link}/${filename}"

mkdir -p "${extract_path}"

if [ ! -d "${extract_path}/${version}" ]; then
  echo "Téléchargement et extraction de ${filename}..."
  wget "${download_link}"
  tar -I zstd -xvf "${filename}" -C "${extract_path}"
  if [ -f "${filename}" ]; then
    rm "${filename}"
  fi
  echo "${version} a été installé avec succès dans ${extract_path}."
else
  echo "${version} est déjà installé dans lutris dans ${extract_path}."
fi

read -p "Appuyez sur Entrée pour quitter..."
