# Adb connect wifi

## Connaître son ip de smartphone

1. Paramètres
2. Réseau et Internet
3. Internet
4. Cliquez sur votre réseau WiFi
5. L'ip est listée

## Associer

Connectez le smartphone à l'ordinateur (donnez l'accès), puis faites la commande 

```bash  
adb tcpip 5555  
```

Ensuite vous pouvez déconnecter le smartphone

## Connexion

```bash
adb connect IP_TELEPHONE:5555
```

Ce qui donne dans le cas présent

```bash
adb connect 192.168.1.112:5555
```




