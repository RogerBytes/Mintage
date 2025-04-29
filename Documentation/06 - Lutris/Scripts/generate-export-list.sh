#!/bin/bash

OUTPUT_FILE="./lutris_export_list_$(date +%Y%m%d_%H%M%S).sh"
GAMES_DIR="$HOME/.config/lutris/games"

echo "#!/bin/bash" > "$OUTPUT_FILE"

for yml in "$GAMES_DIR"/*.yml; do
    name=$(grep '^name:' "$yml" | sed "s/name:[ ]*['\"]*//; s/['\"]*$//; s/''/'/g")
    name=$(echo "$name" | sed -e 's/\\u2019/'"'"'/g')  # remplace \u2019 par une apostrophe simple
    name=$(echo "$name" | sed 's/"/\\"/g')

    slug=$(grep '^game_slug:' "$yml" | sed 's/game_slug:[ ]*//; s/"/\\"/g')

    echo "./export-lutris-wineprefix.sh \"$slug\" \"$name\"" >> "$OUTPUT_FILE"
done

chmod +x "$OUTPUT_FILE"
echo "Export terminé : $OUTPUT_FILE"
