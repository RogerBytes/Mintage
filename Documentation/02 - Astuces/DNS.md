# Changer le DNS

Afin d'éviter les limitations (souvent dictées par des corporations privée et des gouvernements) vous pouvez utiliser des DNS alternatifs.

Ici je vais expliquer la démarche pour utiliser les DNS de [FDN](https://www.fdn.fr/actions/dns/) mais je donnerais d'autre DNS également.

## Options DNS

Allez sur votre l'icône de WiFi/Ethernet dans la barre de menu, et cliquez sur "Paramètres Réseau".

Cliquez sur la roue dentée à côté de votre connexion.  
Allez dans "IPv4" et 

- Décochez (à côté de DNS) "Automatique"
- Dans serveur, collez `80.67.169.12` 
- Cliquez sur le "+"
- Dans le nouvel encadré collez `80.67.169.40`

Allez dans "IPv6" et 

- Décochez (à côté de DNS) "Automatique"
- Dans serveur, collez `2001:910:800::12` 
- Cliquez sur le "+"
- Dans le nouvel encadré collez `2001:910:800::403`

En bas à droite, cliquez sur `Appliquer`

## Liste de DNS

### FDN

[FDN](https://www.fdn.fr/actions/dns/) revendique l'accès libre et sans censure à internet, même si c'est un FAI il laisse libre accès à ses DNS.
Il n'y a cependant pas de liste noire de sites comme sur Quad9 sur les DNS de FDN.

Ils sont disponibles aux adresses IPv4 et IPv6 suivantes :

IPv4 : `80.67.169.12` ou `80.67.169.40`  
IPv6 : `2001:910:800::12` ou `2001:910:800::40`   

DoT : `ns0.fdn.fr` et `ns1.fdn.fr` sur le port `TCP/853`  
DoH : `https://ns0.fdn.fr/dns-query` et `https://ns1.fdn.fr/dns-query`  

### Quad9

[Quad9](https://www.quad9.net/fr/) est un fournisseur DNS orienté sécurité, la contrepartie est qu'il n'a pas pour objectif d'avoir des redirections non censurées.

Ils sont disponibles aux adresses IPv4 et IPv6 suivantes :

IPv4 : `9.9.9.9` ou `149.112.112.112`  
IPv6 : `2620:fe::fe` ou `2620:fe::9`  

DoT : `dns.quad9.net` et `dns11.quad9.net`  
DoH : `https://dns.quad9.net/dns-query` et `https://dns11.quad9.net/dns-query`  

### DNS for Family

[DNS for Family](https://dnsforfamily.com/serversStatus) est un fournisseur DNS orienté famille, idéal pour la session d'un enfant.

Ils sont disponibles aux adresses IPv4 et IPv6 suivantes :

IPv4 : `94.130.180.225` ou `78.47.64.161`  
IPv6 : `2a01:4f8:1c0c:40db::1` ou `2a01:4f8:1c17:4df8::1`  

DoT : `dns-dot.dnsforfamily.com`  
DoH : `https://dns-doh.dnsforfamily.com/dns-query`  