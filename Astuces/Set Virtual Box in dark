#!/bin/bash

# Fonction pour exécuter une commande en sudo
sudoit() {
    local command=$1
    echo "$PASSWORD" | sudo -S bash -c "$command"
}

# ------------- RENTRER LES COMMANDES DANS "show_progress" ! -------------
# Fonction pour afficher une fenêtre de progression et lancer les commandes au fur et à mesure
show_progress() {
    (
        echo "40" ;
        sudoit "apt install -y qt5ct"
        mkdir -p ~/.config/qt5ct
	touch ~/.config/qt5ct/qt5ct.conf

        echo "70" ;
        cat <<EOF > ~/.config/qt5ct/qt5ct.conf
[Appearance]
color_scheme_path=/usr/share/qt5ct/colors/darker.conf
custom_palette=true
icon_theme=Mint-Y
standard_dialogs=default
style=Breeze

[Fonts]
fixed=@Variant(\0\0\0@\0\0\0\x12\0M\0o\0n\0s\0p\0\x61\0\x63\0\x65@$\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
general=@Variant(\0\0\0@\0\0\0\f\0U\0\x62\0u\0n\0t\0u@$\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)

[Interface]
activate_item_on_single_click=1
buttonbox_layout=0
cursor_flash_time=1000
dialog_buttons_have_icons=1
double_click_interval=400
gui_effects=@Invalid()
keyboard_scheme=2
menus_have_icons=true
show_shortcuts_in_context_menus=true
stylesheets=@Invalid()
toolbutton_style=4
underline_shortcut=1
wheel_scroll_lines=3

[SettingsWindow]
geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\x64\0\0\0\x64\0\0\x3\x42\0\0\x2\xe4\0\0\0\x64\0\0\0\x80\0\0\x3\x42\0\0\x2\xe4\0\0\0\0\0\0\0\0\a\x80\0\0\0\x64\0\0\0\x80\0\0\x3\x42\0\0\x2\xe4)

[Troubleshooting]
force_raster_widgets=1
ignored_applications=@Invalid()
EOF

        echo "99.99999" ; sleep 1
        sudoit "sed -i 's/^Exec=.*$/Exec=env QT_QPA_PLATFORMTHEME=qt5ct virtualbox %U/' /usr/share/applications/virtualbox.desktop"
    ) | zenity --progress --title="Dark Theme for Virtual Box" --text="Installation..." --auto-close --width=600 --height=120
}

# _____________________________________________________________________________________

# Demande le mot de passe sudo
PASSWORD=$(zenity --password --title="Dark Theme for Virtual Box")

# Vérifie si l'utilisateur a fourni un mot de passe sudo valide
if [ $? -eq 0 ]; then
    # Vérifie si le mot de passe sudo est correct
    if sudo -S true <<< "$PASSWORD" 2>/dev/null; then
        # Demande confirmation pour l'installation
        if zenity --question --title="Dark Theme for Virtual Box" --text="Do you want to install Dark Theme for Virtual Box ?" --width=600 --height=120; then
            # Affiche une fenêtre de progression
            show_progress

            # Affiche un message d'information
            zenity --info --title="Dark Theme for Virtual Box" --text="Installation completed." --width=600 --height=120
        else
            zenity --info --title="Dark Theme for Virtual Box" --text="Installation canceled." --width=600 --height=120
        fi
    else
        zenity --error --text="Incorrect password. Installation canceled." --width=600 --height=120
    fi
else
    zenity --error --text="Incorrect password. Installation canceled." --width=600 --height=120
fi


# La même chose mais sans vérification du mot de passe / sudoit() :

# # Demande confirmation pour l'installation du jeu
# if zenity --question --title="Confirmation" --text="Do you want to install Dark Theme for Virtual Box ?" --width=600 --height=120; then
#     # Affiche une fenêtre de progression
#     show_progress

#     # Affiche un message d'information
#     zenity --info --title="Dark Theme for Virtual Box" --text="Installation completed" --width=600 --height=120
# else
#     zenity --info --title="Dark Theme for Virtual Box" --text="Installation canceled." --width=600 --height=120
# fi
