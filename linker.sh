#!/bin/bash

# Matt Kohls 2020
# License GPLv3 or later

# Save dir of where we start from to link back to
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ~ || (echo "Unable to change directory" && exit)

# Start with .bashrc
if [[ -e .bashrc ]] ; then
    mv .bashrc .bashrc.original
fi
ln -s "$DIR"/.bashrc ~/.bashrc

# Next .vim(rc)
if [[ -e .vimrc ]] ; then
    mv .vimrc .vimrc.original
fi
ln -s "$DIR"/.vimrc ~/.vimrc

echo "Install VundleVim if not already present"

# Next .git
if [[ -e .gitconfig ]] ; then
    mv .gitconfig .gitconfig.original
fi
if [[ -e .gitignore_global ]] ; then
    mv .gitignore_global .gitignore_global.original
fi
ln -s "$DIR"/.gitconfig ~/.gitconfig
ln -s "$DIR"/.gitignore_global ~/.gitignore_global

# Conky
if [[ -e .conkyrc ]] ; then
	mv .conkyrc .conkyrc_original
fi
ln -s "$DIR"/.conkyrc ~/.conkyrc

# .config stuff
cd ~ || (echo "Unable to change directory" && exit)
if [[ ! -e .config ]] ; then
    mkdir .config
fi

# Neovim
cd .config || (echo "Unable to access config directory" && exit)
if [[ -e nvim ]] ; then
    mv nvim nvim.original
else
	mkdir nvim
fi
ln -s "$DIR"/init.vim ~/.config/nvim/init.vim

