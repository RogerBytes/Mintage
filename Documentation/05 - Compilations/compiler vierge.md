# compiler vierge

```bash
REPO_URL=https://gitlab.gnome.org/GNOME/libadwaita
REPO_NAME=$(basename $REPO_URL .git)
SOURCE_DIR=$(pwd)/$REPO_NAME
git clone $REPO_URL $SOURCE_DIR
cd $SOURCE_DIR
# Les commandes ici
cd
sudo rm -r $SOURCE_DIR

```
