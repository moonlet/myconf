#!/bin/bash

# 1. prepare
sudo apt-get install git ctags curl vim

# 2. get all the resources
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git

# 3. get the vimrc file
cp ~/.vimrc ~/.vimrc.bk
curl https://raw.githubusercontent.com/xiaorx/vimrc/master/vim/vimrc > ~/.vimr
