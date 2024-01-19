# Désinstaller complètement une app Flatpak

Pour désinstaller un flatpak

```bash
flatpak uninstall -y org.Gnome.Todo
```

Puis virer manuellement les restes du paquet (le dossier a le même nom que le paquet) dans `~/.var/app`
