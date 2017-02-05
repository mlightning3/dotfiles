#!/bin/bash

cd ~

# Start with .bashrc
if [[ -e .bashrc ]] ; then
    cp .bashrc .bashrc.original
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc

# Next .vim(rc)
if [[ -e .vimrc ]] ; then
    cp .vimrc .vimrc.original
fi
if [[ -e .vim ]] ; then
    cp -r .vim .vim.original
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim

# Next .git
if [[ -e .gitconfig ]] ; then
    cp .gitconfig .gitconfig.original
fi
if [[ -e .gitignore_global ]] ; then
    cp .gitignore_global .gitignore_global.original
fi
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global .gitignore_global

