#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"

required="node npm perl python screen http-server pygmentize conky weather"

git pull origin master

read -p "Dotfiles from `pwd` will be copied to ${HOME}, is that right? (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rsync --exclude ".git/" --exclude "setup.sh" --exclude "README.md" -av --no-perms . ~
    source ~/.bash_profile
    echo "Dotfiles copied"
fi

for item in $required; do
    if hash $item 2>/dev/null; then
        echo "\"$item\" found"
    else
        echo "\"$item\" not found!"
    fi
done
