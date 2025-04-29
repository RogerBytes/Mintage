# Comment faire

```bash
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
```
Le nom d'utilisateur est "alias_name" et le mot de passe est celui que vous avez mis

Passe du Keystore de débogage c'est le mdp que vous avez mis.


Pour voir les info on fait

```bash
keytool -list -v -keystore my-release-key.keystore
```


Ca retourne ce bordel là :

```bash
keytool -list -v -keystore my-release-key.keystore
Entrez le mot de passe du fichier de clés :
Type de fichier de clés : PKCS12
Fournisseur de fichier de clés : SUN

Votre fichier de clés d'accès contient 1 entrée

Nom d'alias : alias_name
Date de création : 28 janv. 2024
Type d'entrée : PrivateKeyEntry
Longueur de chaîne du certificat : 1
Certificat[1]:
Propriétaire : CN=CACA, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown
Emetteur : CN=CACA, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown
Numéro de série : 67b6970a
Valide du Sun Jan 28 15:32:50 CET 2024 au Thu Jun 15 16:32:50 CEST 2051
Empreintes du certificat :
	 SHA 1: FD:7F:80:4A:DF:B3:24:1A:F0:08:7E:FA:7E:15:A5:6F:D2:EC:FC:AF
	 SHA 256: 3D:1D:28:A6:D7:B4:4D:B7:2F:5F:F0:14:97:26:DA:8A:97:DA:85:CE:DD:5D:61:3A:A4:4C:9A:F2:73:A3:1D:AC
Nom de l'algorithme de signature : SHA256withRSA
Algorithme de clé publique du sujet : Clé RSA 2048 bits
Version : 3

Extensions :

#1: ObjectId: 2.5.29.14 Criticality=false
SubjectKeyIdentifier [
KeyIdentifier [
0000: E6 85 FE 33 0F A1 A7 3C   BE FF 20 90 BD 92 4F 22  ...3...<.. ...O"
0010: B5 E7 1A D8                                        ....
]
]



*******************************************
*******************************************




❯

```
