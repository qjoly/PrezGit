#!/bin/bash

if [ -d /tmp/prezgit/revert ]; then
        rm -rf /tmp/prezgit/revert
fi

mkdir -p /tmp/prezgit/revert

. demo-magic.sh

cd /tmp/prezgit/revert && git init

pei 'for i in `seq -w 1 3`; do echo "$i" > "$i" ; git add "$i"; git commit -m "$i"; done;'
pei 'git log --oneline'
pei '# Nous avons 3 commits créant les fichiers 1,2,3'
pei "# Je souhaite annuler le commit créant le fichier 2"
pei "git revert HEAD^ # Annuler l'avant dernier commit"
pei "git log --oneline"
pei "# Un nouveau commit est créé"
pei "ls"
pei "# Le fichier 2 n'existe plus"
