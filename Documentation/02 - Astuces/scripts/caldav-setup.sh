#!/bin/zsh

echo "Ce script va synchroniser vos agendas CalDAV de Thunderbird avec votre sytème Linux Mint"
echo "Il vous faut ajouter vos agendas dans Thunderbird avant d'utiliser le script"
echo "Appuyez sur 'ENTER' pour continuer ou 'CTRL + C' pour sortir"
read

declare -a ids
declare -A agendas
config_dir="${HOME}/.config/evolution/sources"
file_path=$(find $HOME/.thunderbird/ -type d -name "*.default-release" -exec echo {}/prefs.js \;)
calendars_list_line=$(grep "calendar.list.sortOrder" "$file_path")
ids_string=$(echo "$calendars_list_line" | sed -n 's/user_pref("calendar.list.sortOrder", "\(.*\)");/\1/p')
ids=($(echo "$ids_string" | awk '{for (i=2; i<=NF; i++) print $i}'))
caldav_count=$(echo "${#ids[@]}")

if dpkg -s evolution-data-server >/dev/null 2>&1; then
  echo "Vérification : Le paquet 'evolution-data-server' est déjà installé."
else
  if ! command -v nala >/dev/null 2>&1; then
    echo "Vérification : Le paquet 'nala' (frontend d'apt) n'est pas installé. Nous allons l'installer."
    echo "Appuyez sur 'ENTER' pour continuer ou 'CTRL + C' pour sortir"
    read
    sudo apt install -y nala
  fi
  echo "Vérification : Le paquet 'evolution-data-server' n'est pas installé. Nous allons l'installer."
  echo "Appuyez sur 'ENTER' pour continuer ou 'CTRL + C' pour sortir"
  sudo nala install -y evolution-data-server
fi

if [ ! -d "$config_dir" ]; then
  mkdir -p "$config_dir"
fi

for ((i=1; i<=caldav_count; i++)); do
  agenda_host_path_line=$(grep "${ids[$i]}.*\.uri" $file_path)
  agenda_name_line=$(grep "${ids[$i]}.*\.name" $file_path)
  agenda_color_line=$(grep "${ids[$i]}.*\.color" $file_path)
  agenda_mail_line=$(grep "${ids[$i]}.*\.username" $file_path)
  agendas["$i,id"]=$(echo "${ids[$i]}")
  agenda_host_path=$(echo "$agenda_host_path_line" | awk -F'"' '{print $4}')
  agendas["$i,host"]=$(echo "$agenda_host_path" | awk -F'/' '{print $3}')
  agendas["$i,path"]=$(echo "$agenda_host_path" | cut -d'/' -f4- | sed 's#^#/#')
  agendas["$i,name"]=$(echo "$agenda_name_line" | awk -F'"' '{print $4}')
  agendas["$i,color"]=$(echo "$agenda_color_line" | awk -F'"' '{print $4}')
  agendas["$i,mail"]=$(echo "$agenda_mail_line" | awk -F'"' '{print $4}')

  config_file="${config_dir}/${agendas["$i,name"]}.source"
  cat > "$config_file" <<EOF
[Data Source]
DisplayName=${agendas["$i,name"]}
Enabled=true
Parent=caldav-stub

[Offline]
StaySynchronized=true

[Security]
Method=tls

[WebDAV Backend]
AvoidIfmatch=false
CalendarAutoSchedule=false
Color=${agendas["$i,color"]}
DisplayName=${agendas["$i,name"]}
EmailAddress=$user_email
ResourcePath=${agendas["$i,path"]}
ResourceQuery=
SslTrust=

[Authentication]
Host=${agendas["$i,host"]}
Method=plain/password
Port=443
ProxyUid=system-proxy
RememberPassword=true
User=${agendas["$i,mail"]}
CredentialName=

[Refresh]
Enabled=true
IntervalMinutes=30

[Calendar]
BackendName=caldav
Color=${agendas["$i,color"]}
Selected=true
EOF
done

echo "La synconistation CalDAV de vos agendas est activée avec Linux Mint"
echo "Pour terminer la configuration de vos agendas CalDAV, vous devez redémarrer votre ordinateur"
echo 'Après le reboot, lancez "Agenda" (ou via la commande "gnome-calendar")'
echo "Il demandera d'entrer vos mots de passe et activera la synchronisation des agendas"
echo "Appuyez sur 'ENTER' pour quitter
read

