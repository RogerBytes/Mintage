#!/bin/sh

if [ -n "$1" ] && [ "$1" != "''" ] && [ "$1" != '""' ]; then
  message="$1"
else
  message="no comment"
fi

git add --all
git commit -m "$message"
git push
clear

# TODO
# captation d'erreur sur le commit
# captation d'erreur sur le push
# proposer un git pull (en prevenant qu'il pourra il y avoir des conflit de fichier) s'il y a une erreur lors du push
# Une option pour commit sans push
