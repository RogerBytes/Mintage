# Comment tout arrêter

C'est pour Linux Mint avec Cinnamon, sur un autre environnement il faudra trouver le remplaçant de la ligne `nohup cinnamon --replace >/dev/null 2>&1 &`

Complètement arrêter tous les services Docker (et relancer l'environnement graphique de cinnamon)

```bash
docker stop $(docker ps -a -q)
sudo systemctl stop docker.service
sudo systemctl stop docker.socket
systemctl --user stop docker-desktop
pkill -f docker-desktop
nohup cinnamon --replace >/dev/null 2>&1 &
```