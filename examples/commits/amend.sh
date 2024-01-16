#!/bin/bash

if [ -d /tmp/prezgit/commit ]; then
        rm -rf /tmp/prezgit/commit
fi

mkdir -p /tmp/prezgit/commit

. demo-magic.sh


cd /tmp/prezgit/commit && git init

pei 'for i in `seq -w 1 3`; do echo "$i" | tee -a FICHIER; done;'
pei 'git add . ; git commit -m "Création des fichiers 1, 2 et 3"'
pei '# Je souhaite ajouter "4" au fichier.. mais le commit est déjà fait'
pei 'echo "4" | tee -a FICHIER'
pei 'git add .'
pei 'git commit --amend'
pei 'git log'


