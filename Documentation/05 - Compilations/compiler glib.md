# compiler glib

<https://github.com/google/shaderc?tab=readme-ov-file#getting-and-building-shaderc>

```bash
REPO_URL=https://gitlab.gnome.org/GNOME/glib
REPO_NAME=$(basename $REPO_URL .git)
SOURCE_DIR=$(pwd)/$REPO_NAME
git clone $REPO_URL $SOURCE_DIR
cd $SOURCE_DIR
meson setup _build
meson compile -C _build
meson install -C _build
cd
sudo rm -r $SOURCE_DIR
```
