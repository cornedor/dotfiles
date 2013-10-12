#!/bin/bash

dir=`pwd`
files="bashrc zf bash_profile bash_prompt exports functions aliases"

git pull origin master

read -p "Dotfiles from `pwd` will be linked to ${HOME}, is that right? (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo 'Setting up dotfiles'
	# make backup dir
	mkdir -p ${dir}/backup

	for file in $files; do
		mv ~/.$file ${dir}/backup
		ln -s $dir/.$file ~/.$file
	done
fi