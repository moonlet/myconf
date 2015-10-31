#!/bin/bash
VIM_DIR=${HOME}/.vim
VIM_FTPLUGIN_DIR=${VIM_DIR}/ftplugin
VIM_PYTHON_DIR=${VIM_FTPLGIN_DIR}/python

# 0. init
mkdir -p ${VIM_DIR}
mkdir -p ${VIM_FTPLUGIN_DIR}
mkdir -p ${VIM_PYTHON_DIR}
sudo apt-get install python-pip

# 1. prepare
sudo apt-get install git curl vim

# 2. get all the resources
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# 3. get the vimrc file
cp ~/.vimrc ~/.vimrc.bk
curl https://raw.githubusercontent.com/xiaorx/vimrc/master/vim/vimrc > ${HOME}/.vimrc
