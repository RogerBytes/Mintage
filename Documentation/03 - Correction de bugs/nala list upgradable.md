# nala list upgradable

Si vous avez

```bash
2 packages can be upgraded. Run 'nala list --upgradable' to see them.
```

faites donc

```bash
nala list --upgradable
```

il retourne

```bash
❯ nala list --upgradable
libmm-glib0 1.20.0-1~ubuntu22.04.2 [Ubuntu/jammy main]
├── is installed and upgradable to 1.20.0-1~ubuntu22.04.3
└── D-Bus service for managing modems - shared libraries

modemmanager 1.20.0-1~ubuntu22.04.2 [Ubuntu/jammy main]
├── is installed and upgradable to 1.20.0-1~ubuntu22.04.3
└── D-Bus service for managing modems
❯
```

Vu qu'il précise les paquets `libmm-glib0` et `modemmanager` je fais

```bash
sudo apt upgrade -y libmm-glib0 modemmanager
```
