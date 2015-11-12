#!/bin/bash

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
git submodule add https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim
