#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

read -p "Dotfiles from `pwd` will be copied to ${HOME}, is that right? (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rsync --exclude ".git/" --exclude "setup.sh" --exclude "README.md" -av --no-perms . ~
    source ~/.bash_profile
    echo "Dotfiles copied"
fi

if hash screen 2>/dev/null; then
    echo "\"screen\" found"
else
    echo "\"screen\" not found"
fi

if hash http-server 2>/dev/null; then
    echo "\"http-server\" found"
else
    echo "Run (sudo) npm install -g http-server"
fi

if hash pygmentize 2>/dev/null; then
    echo "\"pygmentize\" found"
else
    echo "\"pygmentize\" not found"
fi
