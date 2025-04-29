Exemple pour install-update-yt-dlp

GIST_URL="https://gist.github.com/jonath92/039e998b3d3f6ba4afd5d5c671eaedf1"
GIST_ID=$(basename "$GIST_URL")
RAW_URL=$(curl -s "https://api.github.com/gists/$GIST_ID" | grep '"raw_url"' | cut -d '"' -f4)
FILENAME=$(basename "$RAW_URL")
curl -L "$RAW_URL" -o "$FILENAME"
chmod +x "$FILENAME"
sudo ./"$FILENAME"


et si on veut changer pour mettre Install-Update-Youtube-dl Linux Mint

il suffit de remplacer la variable gist url

GIST_URL="https://gist.github.com/jonath92/0f6bf4606bc8a34be1bb0826c99b73d1"
GIST_ID=$(basename "$GIST_URL")
RAW_URL=$(curl -s "https://api.github.com/gists/$GIST_ID" | grep '"raw_url"' | cut -d '"' -f4)
FILENAME=$(basename "$RAW_URL")
curl -L "$RAW_URL" -o "$FILENAME"
chmod +x "$FILENAME"
sudo ./"$FILENAME"
