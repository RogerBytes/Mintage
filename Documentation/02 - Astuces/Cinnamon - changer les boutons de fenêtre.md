# Changer la place des boutons de fenêtre

## Pour les mettre à gauche

```bash
gsettings set org.cinnamon.desktop.wm.preferences button-layout 'close,minimize,maximize:'
```


## Pour les mettre à droite

```bash
gsettings set org.cinnamon.desktop.wm.preferences button-layout ':minimize,maximize,close'
```
