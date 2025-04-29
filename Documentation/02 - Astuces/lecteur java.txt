Pour Lancer un fichier jnlp

javaws ton_fichier.jnlp


Pour changer la version de java

sudo update-alternatives --config java

choisir
/usr/lib/jvm/jre1.8.0_351/bin/java
sudo ln -s /usr/lib/jvm/jre1.8.0_351/bin/javaws /usr/bin/javaws



Pour remtre javaws par defaut
sudo update-alternatives --auto javaws
