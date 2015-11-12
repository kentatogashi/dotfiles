#!/bin/bash

git submodule add https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
