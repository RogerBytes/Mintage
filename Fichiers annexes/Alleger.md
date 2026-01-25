# Optimisation


Le but de cette documentation est d'optimiser au maximum LM sur une machine modeste.

La config minimale pour utiliser mintage est

- RAM : 8 Go DDR4 2400MHz
- Stockage : SSD 125GB SATA III / ~ 550 Mo/s
- CPU : Duo Core (2) @ 2.300GHz

## Zram

ZRAM crée un disque virtuel compressé en RAM pour stocker temporairement les données d’échange, réduisant l’usage du SSD et accélérant le système.


```bash
sudo nala install -y zram-tools
```

Et on activer le service.

```bash
sudo systemctl enable --now zramswap.service
```

Ça crée automatiquement une zone compressée en RAM équivalente à ~50% de votre RAM (la taille par défaut est généralement 50 % de la RAM).

## Swappiness

Swappiness définit la tendance du noyau à utiliser le swap (mémoire disque) plutôt que la RAM. Sur un SSD avec 8 Go, il vaut mieux réduire cette valeur pour que Linux privilégie la RAM :

On vérifie la valeur actuelle : `cat /proc/sys/vm/swappiness` (souvent 60)

```bash
cat /proc/sys/vm/swappiness
```

On la réduit à 10–15

```bash
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
```

On relance le service

```bash
sudo sysctl -p
```

## Alléger Cinnamon

### Désactiver animations

`Menu → Préférences → Apparence → Effets de bureau → Désactiver`.

### Retirer applets inutiles

`Menu → Paramètres → Applets` et supprimer ceux non essentiels.

### Limiter

Limiter les desklets et extensions, chaque composant actif consomme de la RAM et du CPU.  
`Menu → Paramètres → Extensions` et `Menu → Paramètres → Desklets`.

## Désactiver les services inutiles au démarrage

Chaque service actif consomme de la RAM et du CPU inutilement.

On lister les services activés

```bash
systemctl list-unit-files --type=service | grep enabled
```

Identifier ceux que je n'utilise pas et ensuite on désactive le service

```bash
sudo systemctl disable nom_du_service
```

Au prochain redémmarage les services désactivés ne seront plus actifs

