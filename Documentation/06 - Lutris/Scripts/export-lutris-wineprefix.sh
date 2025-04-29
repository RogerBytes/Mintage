#!/bin/bash

# Les scripts d'import et d'export necessitent de suivre des conventions, le jeu doit être installé dans 'drive_c/Games' (ou du moins l'executeur 'Launch.bat' doit y être dans un dossier), il ne doit y avoir qu'un seul dossier dans 'drive_c/Games'.
# La commande d'exectution doit être dans un fichier "Launch.bat" dans le dossier du jeu. Par exemple pour mon prefixe de rain world j'ai un fichier "Launch.bat" dans "drive_c/Games/Rain World"
# s'il y a des scripts au démarrage et à la sortie ils doivent s'appeller start.sh et stop.sh et se trouver dans le dossier scripts à la racine du prefixe, pareil pour un fichier de manette antimicro.
#
# Si vous utilisez un runner spécifique et qu'il est requis, il faudra le préciser dans le nom de l'archive entre accolades, par exemple "Final Fantasy VII [proton-exp-24-12-x86_64].tzst"
# Voici les runners que je conseille :
#
# wine-ge-8-26-x86_64 -> Runner par défaut, bien pour la majorité des jeux
# wine-ge-7-27-x86_64 -> Runner un peu plus ancien, requis pour certains jeux
# wine-9.16-amd64 -> Runner avec une version vanilla récente de wine, requis pour certains vieux jeux
# proton-exp-25-03-x86_64 -> Runner proton, cette version peut avoir quelque soucis avec certains jeux
# proton-exp-24-12-x86_64 -> Runner proton, je trouve que c'est le plus comptatible
# proton-exp-24-03-x86_64 -> Runner proton, un peu plus ancien
# lutris-fshack-7.2-x86_64 -> Runner fshack, requis pour certains vieux jeux
#
# Normalement avec ceux-là vous devriez pouvoir tout faire tourner
# Si le prefixe requis n'est pas installé le script le télécharera lors de l'import sinon vous devez mettre l'archive tzst du runner dans ./resources/ (dans le même repertoire que le script d'import)
#
# L'utilisation du script d'export se fait via des commandes/arguments, elles sont décrites dans la doc du programme
# Pour l'utilisation du script d'import il suffit de mettre le script dans le dossier où se trouvent le prefixe du jeu au format tzst, et de le lancer, s'il y a plusieurs prefixes de jeux dans le dossier, le script d'import les importera les uns à la suite des autres.

# Affiche le message d'aide si l'argument --help est passé
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo -e "\033[38;5;214mUtilisation:\033[0m\n\033[32m$0 <wineprefix_name> <archive_name> [tar/xz/zst/gzip] [compression_level]\033[0m"
  echo -e "\nDescription:"
  echo -e "  Ce script permet d'archiver un Wineprefix de lutris proprement, \033[38;5;214mattention lutris doit impérativement utiliser le dossier \"~/Games\"\033[0m."
  echo -e "\nArguments:"
  echo -e "  <wineprefix_name>    Nom du Wineprefix à compresser (répertoire dans le répertoire Games)."
  echo -e "  <archive_name>       Nom de l'archive de destination."
  echo -e "  [tar/xz/zst/gzip]    Optionnel - Type de compression à utiliser (par défaut : zst)."
  echo -e "  [compression_level]  Optionnel - Niveau de compression à utiliser (par défaut : 3 pour zst et 6 pour xz)."
  echo -e "                        Pour zst, les niveaux vont de 1 (faible) à 22 (maximal)."
  echo -e "                        Pour xz, les niveaux vont de 1 (faible) à 9 (maximal)."
  echo -e "\nExemples:"
  echo -e "  $0 crypt-of-the-necrodancer \"Crypt of the Necrodancer\""
  echo -e "  Donnera une archive \"Crypt of the Necrodancer.tzst\" compréssé au niveau par défaut (3)"
  echo -e "\n  $0 balatro Balatro gzip"
  echo -e "  Donnera une archive \"Balatro.tgz\""
  echo -e "\n  $0 far-cry-3-blood-dragon \"Far Cry 3: Blood Dragon\" zst 22"
  echo -e "  Donnera une archive \"Far Cry 3: Blood Dragon.tzst\" compréssé au niveau maximum (22)"
  exit 0
fi

# Variables d'environnement
OUTPUT_DIR="${HOME}"
SCRIPT_NAME=$0
WINEPREFIX_NAME=$1
ARCHIVE_NAME=$2
COMPRESSION_TYPE=${3:-zst}
LEVEL=${4:-3}
GAMES_DIR="${HOME}/Games"
WINEPREFIX_DIR="${GAMES_DIR}/${WINEPREFIX_NAME}"
GAME_DIR=$(basename "$WINEPREFIX_DIR/drive_c/Games"/*/)
user_array=("$USER" "harry")
# On peut rajouter des noms dans le tableau $user_array, il suffit de separer les entrée avec un espace
ini_parent_dir="$WINEPREFIX_DIR/drive_c/Games/$GAME_DIR"
goglog="$ini_parent_dir/goglog.ini"
lutris_json="${WINEPREFIX_DIR}/lutris.json"

# Remplacer chaque valeur du tableau par "anonuser" dans goglog.ini
if [ -f "$goglog" ]; then
  for user in "${user_array[@]}"; do
    sed -i "s|$user|anonuser|g" "$goglog"
  done
  echo "Les utilisateurs ont été remplacés par 'anonuser' dans goglog.ini"
else
  echo "Le fichier goglog.ini n'existe pas"
fi

# Remplacer chaque valeur du tableau par "anonuser" dans lutris_json
if [ -f "$lutris_json" ]; then
  for user in "${user_array[@]}"; do
    sed -i "s|$user|anonuser|g" "$lutris_json"
  done
  echo "Les utilisateurs ont été remplacés par 'anonuser' dans lutris.json"
else
  echo "Le fichier lutris.json n'existe pas"
fi


# Vérifie si le nombre d'arguments est correct
if [ "$#" -lt 2 ] || [ "$#" -gt 5 ]; then
  echo -e "\033[31mErreur : usage incorrect.\033[0m Utilisez : $0 <wineprefix_name> <archive_name> [tar/xz/zst/gzip]" >&2
  exit 1
fi

# Vérifie que le niveau de compression est un entier
if ! [[ "$LEVEL" =~ ^[0-9]+$ ]]; then
  echo -e "\033[31mErreur : Le niveau de compression doit être un entier.\033[0m" >&2
  exit 1
fi

# Vérifie les limites du niveau de compression pour xz et zst
if [[ "$COMPRESSION_TYPE" == "xz" && ( "$LEVEL" -lt 1 || "$LEVEL" -gt 9 ) ]]; then
  echo -e "\033[31mErreur : Le niveau de compression pour xz doit être entre 1 et 9.\033[0m" >&2
  exit 1
fi

if [[ "$COMPRESSION_TYPE" == "zst" && ( "$LEVEL" -lt 1 || "$LEVEL" -gt 22 ) ]]; then
  echo -e "\033[31mErreur : Le niveau de compression pour zst doit être entre 1 et 22.\033[0m" >&2
  exit 1
fi

# Déclaration des types de compression et des extensions
declare -A compression_types
compression_types=(
  [gzip]="tar -cvzf"
  [tar]="tar -cvf"
  [xz]="tar -cvf"
  [zst]="tar -I \"zstd -$LEVEL\" -cvf"
)

declare -A extensions
extensions=(
  [gzip]="tgz"
  [tar]="tar"
  [xz]="txz"
  [zst]="tzst"
)

if [[ ! ${compression_types[$COMPRESSION_TYPE]+_} ]]; then
  echo -e "\033[31mErreur : Type de compression '$COMPRESSION_TYPE' non pris en charge.\033[0m" >&2
  echo -e "\033[38;5;214mUtilisez [tar/xz/zst/gzip] \033[0m" >&2
  exit 1
fi

# Vérifie si le Wineprefix existe
if [ ! -d "$WINEPREFIX_DIR" ]; then
  echo -e "\033[31mErreur : le Wineprefix ${WINEPREFIX_NAME} n'existe pas dans ${GAMES_DIR}\033[0m" >&2
  exit 1
fi


# Opérations de nettoyage du préfixe
if [ -d "${WINEPREFIX_DIR}/dosdevices" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/dosdevices"
fi

if [ -L "${WINEPREFIX_DIR}/drive_c/users/steamuser" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser"
fi

if [ -L "${WINEPREFIX_DIR}/drive_c/users/${USER}" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/${USER}"
fi

if [ -d "${WINEPREFIX_DIR}/drive_c/users/${USER}" ]; then
  mv -n "${WINEPREFIX_DIR}/drive_c/users/${USER}" "${WINEPREFIX_DIR}/drive_c/users/steamuser"
fi

if [ -L "${WINEPREFIX_DIR}/drive_c/users/steamuser/Application Data/" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser/Application Data/"
fi

if [ -d "${WINEPREFIX_DIR}/drive_c/users/steamuser/My Documents/" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser/My Documents/"
fi

if [ -L "${WINEPREFIX_DIR}/drive_c/users/steamuser/Downloads" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser/Downloads"
fi

if [ -d "${WINEPREFIX_DIR}/drive_c/ProgramData/Package\ Cache/" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/ProgramData/Package\ Cache/"*
fi

if [ -d "${WINEPREFIX_DIR}/drive_c/users/steamuser/Temp" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser/Temp"*
fi

if [ -d "${WINEPREFIX_DIR}/drive_c" ] && [ ! -d "${WINEPREFIX_DIR}/drive_c/users/steamuser/Temp" ]; then
  mkdir -p "${WINEPREFIX_DIR}/drive_c/users/steamuser/Temp"
fi

if [ -L "${WINEPREFIX_DIR}/drive_c/users/steamuser/AppData/Roaming/Microsoft/Windows/Templates" ]; then
  rm -rf -- "${WINEPREFIX_DIR}/drive_c/users/steamuser/AppData/Roaming/Microsoft/Windows/Templates"
fi

# Vire les liens symboliques cassés
find "${WINEPREFIX_DIR}/drive_c" -type l ! -exec test -e {} \; -delete

# remplacer les liens symboliques restants par le fichier qu'ils ciblent
find "${WINEPREFIX_DIR}/drive_c" -type l -exec bash -c 'target=$(readlink "{}"); rm "{}"; cp -r "$target" "{}"' \;

# Supprimer les doublons ".orig" de dll de system32
find "${WINEPREFIX_DIR}/drive_c/windows/system32" -type f -name '*.orig' -delete

# Supprimer les doublons ".orig" de dll de syswow64
find "${WINEPREFIX_DIR}/drive_c/windows/syswow64" -type f -name '*.orig' -delete

# Remplacer chaque occurrence du nom d'utilisateur dans system.reg à la racine du préfixe par "anonuser"
if [ -f "${WINEPREFIX_DIR}/system.reg" ]; then
  sed -i "s|$USER|anonuser|g" "${WINEPREFIX_DIR}/system.reg"
  echo -e "Le nom d'utilisateur a été remplacé par 'anonuser' dans system.reg."
fi

# Remplacer chaque occurrence du nom d'utilisateur dans user.reg à la racine du préfixe par "anonuser"
if [ -f "${WINEPREFIX_DIR}/user.reg" ]; then
  sed -i "s|$USER|anonuser|g" "${WINEPREFIX_DIR}/user.reg"
  echo -e "Le nom d'utilisateur a été remplacé par 'anonuser' dans user.reg."
fi

# Remplacer chaque occurrence du nom d'utilisateur dans userdef.reg à la racine du préfixe par "anonuser"
if [ -f "${WINEPREFIX_DIR}/userdef.reg" ]; then
  sed -i "s|$USER|anonuser|g" "${WINEPREFIX_DIR}/userdef.reg"
  echo -e "Le nom d'utilisateur a été remplacé par 'anonuser' dans userdef.reg."
fi

# Vérifie si les outils nécessaires sont disponibles
for cmd in tar gzip xz zstd; do
  if ! command -v $cmd &> /dev/null; then
    echo -e "\033[31mErreur : l'outil $cmd n'est pas disponible. Installez-le avec votre gestionnaire de paquets.\033[0m" >&2
    exit 1
  fi
done

# Ajuste le niveau de compression pour "xz" et "zst"
if [ "$LEVEL" -eq 3 ] && [ "$COMPRESSION_TYPE" == "xz" ]; then
  LEVEL=6
fi

if [ "$LEVEL" -gt 19 ] && [ "$COMPRESSION_TYPE" == "zst" ]; then
  LEVEL="-ultra -$LEVEL"  # Ajoute --ultra à la variable LEVEL
  compression_types[zst]="tar -I \"zstd -$LEVEL\" -cvf"
fi
# Crée la commande d'archive
command=${compression_types[$COMPRESSION_TYPE]}
extension=${extensions[$COMPRESSION_TYPE]}

set -e

# Commande spécifique pour "xz" et "zst"
if [ "$COMPRESSION_TYPE" == "xz" ]; then
  final_command="$command \"${OUTPUT_DIR}/${ARCHIVE_NAME}.${extension}\" --use-compress-program=\"xz -${LEVEL}\" -C \"${GAMES_DIR}\" \"${WINEPREFIX_NAME}\""
else
  final_command="$command \"${OUTPUT_DIR}/${ARCHIVE_NAME}.${extension}\" -C \"${GAMES_DIR}\" \"${WINEPREFIX_NAME}\""
fi

# Exécuter la commande dans un nouveau shell
echo -e "\033[32m$final_command\033[0m"
bash -c "$final_command"

# Affiche la commande exécutée
echo -e "\033[32mCommande exécutée : \n$final_command\033[0m"

# Affiche le format et le niveau de compression
echo -e "\033[32mFormat : ${COMPRESSION_TYPE^^}, Niveau de compression : $LEVEL\033[0m"

exit 0
