# Installer Penpot via Docker

## Prérequis

Il faut installer Docker

## Installation

On va télécharger le yaml :

```bash
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
```



Et ensuite on utilise le composer une première fois (pour télécharger l'image et les dépendances)

```bash
docker compose -p penpot -f docker-compose.yaml up -d
```

## Utilisation

### Pour lancer le serveur

```bash
docker compose -p penpot -f docker-compose.yaml up -d
```

Et dans le navigateur, allez à

```http
http://localhost:9001
```

### Pour arrêter le serveur

```bash
docker compose -p penpot -f docker-compose.yaml down
```
