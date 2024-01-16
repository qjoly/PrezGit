#!/bin/bash

#if [ -d /tmp/prezgit/stash ]; then
#        rm -rf /tmp/prezgit/stash
#fi
#
#mkdir -p /tmp/prezgit/stash

. demo-magic.sh

cd /tmp/prezgit/stash && git init
pei 'for i in `seq -w 1 3`; do echo "$i" > "$i" ; git add "$i"; git commit -m "$i"; done;'
pei 'git checkout -b "maBranche"'
pei 'echo "123" | tee 1'
git status
pei 'git switch master'
