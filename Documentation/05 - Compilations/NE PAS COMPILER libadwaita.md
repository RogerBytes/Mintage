# NE PAS COMPILER libadwaita

Compiler ceci peut détruire votre distribution.  
A vos risques et périls.

<https://gitlab.gnome.org/GNOME/libadwaita>

```bash
sudo nala install -y libdrm-dev libgstreamer-plugins-bad1.0-dev
REPO_URL=https://github.com/GNOME/libadwaita
REPO_NAME=$(basename $REPO_URL .git)
SOURCE_DIR=$(pwd)/$REPO_NAME
git clone $REPO_URL $SOURCE_DIR
cd $SOURCE_DIR
meson setup _build
```

-> Si erreur

```bash
subprojects/gtk/meson.build:859:13: ERROR: requires argument not a string, library with pkgconfig-generated file or pkgconfig-dependency object, got <InternalDependency dep140016085286336: True>"
Ouvrez le fichier meson.build dans le répertoire subprojects/gtk
```

Allez à la ligne 859 et vérifiez l'argument passé à require

```bash
meson compile -C _build
meson install -C _build
cd
sudo rm -r $SOURCE_DIR
```

```bash
meson . _build
ninja -C _build
ninja -C _build install
```

Voici la ligne 859

```meson
 pkg_config.generate(

```

Le voici dans son bloc de code :

```meson
foreach backend: enabled_backends

 pkg = 'gtk4-@0@'.format(backend)

 pkg_config.generate(

  filebase: pkg,

  unescaped_variables: common_pc_variables,

  name: 'GTK',

  description: 'GTK Graphical UI Library',

  requires: ['gtk4', get_variable('@0@_public_deps'.format(backend), [])],

 )

 meson.override_dependency(pkg, libgtk_dep)

endforeach

```
