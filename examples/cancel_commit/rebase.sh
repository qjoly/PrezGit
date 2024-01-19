#!/bin/bash

if [ -d /tmp/prezgit/rebase ]; then
        rm -rf /tmp/prezgit/rebase
fi

mkdir -p /tmp/prezgit/rebase

. demo-magic.sh

cd /tmp/prezgit/rebase && git init

pei 'for i in `seq -w 1 3`; do echo "$i" > "$i" ; git add "$i"; git commit -m "$i"; done;'
pei 'git log --oneline'
pei '# Nous avons 3 commits créant les fichiers 1,2,3'
pei "# Je souhaite annuler le commit créant le fichier 2"
pei "git rebase -i HEAD~2"
pei "git log --oneline"
pei "ls"
pei "# Le fichier 2 n'existe plus"

