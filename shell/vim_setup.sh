#!/bin/bash

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install ctags for tagbar
pacman -S ctags

# install vundle plugins
vim +PluginInstall +qall
