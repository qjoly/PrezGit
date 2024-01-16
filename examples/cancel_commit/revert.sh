#!/bin/bash

if [ ! -d /tmp/prezgit/revert ]; then
        mkdir -p /tmp/prezgit/revert
fi

. demo-magic.sh

pei 'for i in `seq -w 1 3`; do echo "$i" > "$i" ; git add "$i"; git commit -m "$i"; done;'
pei 'git log --oneline'
pei '# Nous avons 3 commits créant les fichiers 1,2,3'
pei '# Je souhaite annuler le commit créant le fichier 2'
pei 'git revert HEAD^^ # Annuler l\'avant dernier commit'
