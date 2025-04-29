Supprimer les caractères invisibles d'un script

sed -i 's/\xC2\xA0/ /g' apt.sh
sed -i 's/\xC2\xA0/ /g' divers.sh
sed -i 's/\xC2\xA0/ /g' indirect-install.sh
sed -i 's/\xC2\xA0/ /g' theme.sh
sed -i 's/\xC2\xA0/ /g' theme-fin.sh
