#!/bin/bash

# Matt Kohls 2017
# License GPLv3 or later

# Save dir of where we start from to link back to
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ~

# Start with .bashrc
if [[ -e .bashrc ]] ; then
    cp .bashrc .bashrc.original
fi
ln -s $DIR/.bashrc ~/.bashrc

# Next .vim(rc)
if [[ -e .vimrc ]] ; then
    cp .vimrc .vimrc.original
fi
if [[ -e .vim ]] ; then
    cp -r .vim .vim.original
fi
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.vim ~/.vim

# Next .git
if [[ -e .gitconfig ]] ; then
    cp .gitconfig .gitconfig.original
fi
if [[ -e .gitignore_global ]] ; then
    cp .gitignore_global .gitignore_global.original
fi
ln -s $DIR/.gitconfig ~/.gitconfig
ln -s $DIR/.gitignore_global .gitignore_global

