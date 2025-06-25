Sources
https://www.youtube.com/watch?v=Wno3TtvLBgA
https://docs.pipewire.org/page_man_pipewire_conf_5.html

pactl info

si une ligne
Nom du serveur : PulseAudio (on PipeWire 1.0.5)


c'est bon si on voir la mention de "*(on PipeWire *.*.*)"

Requis
sudo nala install -y pulseaudio pavucontrol qpwgraph


Résumé de ce que les commandes vont faire :

Ensuite dans ~/.config/pipewire/pipewire.conf.d/ on va créer un fichier 10-virtual-audio.conf, ce nom, commençant par "10" a pour intérete de se lancer en dernier dans l'ordre de lancement.
Ensuite on va créer 3 noeuds virtuels, 2 Audio/Sink et 1 Audio/Duplex.
Les 2 Audio/Sink sont des entrées classiques et les Audio/Duplex comme des entrées micro.
Voici la commande


Ce que vous pouvez modifier :

VOus pouvez modifier le nom du fichier via la variable "v_audio_name" et aussi le nombre de supports virtuels (et leurs noms), pour en ajouter ou en retirer, c'est ici un setup complet de petit studio de radio et/ou d'enregistrement.


Tout ceci en commandes


v_audio_name=10-virtual-audio
mkdir -p $HOME/.config/pipewire/pipewire.conf.d/
touch $HOME/.config/pipewire/pipewire.conf.d/ $v_audio_name.conf

echo "context.objects = [
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Casque\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Haut-parleurs\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Application\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Vidéo\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Musique\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Navigateur\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Communications\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Auxiliaire 1\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Auxiliaire 2\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Sortie Auxiliaire 3\"
      media.class      = Audio/Sink
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Entrée Micro 1\"
      media.class      = Audio/Duplex
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Entrée Micro 2\"
      media.class      = Audio/Duplex
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  },
  {
    factory = adapter
    args = {
      factory.name     = support.null-audio-sink
      node.name        = \"Entrée Micro 3\"
      media.class      = Audio/Duplex
      object.linger    = true
      audio.position   = [ FL FR ]
      monitor.channel-volumes = true
    }
  }
]" > $HOME/.config/pipewire/pipewire.conf.d/$v_audio_name.conf

Ensuite on peut redémarrer, puis on démarre
qpwgraph
pour faire les connexions des appareils, voir exemple du screenshot "qpwgraph-exemple.png", faites une sauvegarde dans vos documents/logiciel et activez "Activated" (à droite du bouton "Save")
Aller dans session de démarrage pour lui dire de lancer "qpwgraph" au démarrage

Tuto de qpwgraph : https://github.com/rncbc/qpwgraph/blob/main/docs/qpwgraph_patchbay-user_manual.md

Bon il y a des petits bugs sur les entrées virtuelles, il faudra que je fasse un report
Avec Easy Effect le truc semble fonctionner désormais.
flatpak install -y flathub com.github.wwmm.easyeffects
