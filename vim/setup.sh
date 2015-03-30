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
sudo apt-get install git ctags curl vim

# 2. get all the resources
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git

# 3. get the vimrc file
cp ~/.vimrc ~/.vimrc.bk
curl https://raw.githubusercontent.com/xiaorx/vimrc/master/vim/vimrc > ${HOME}/.vimrc

# 4. setup pep8
sudo pip install pep8
wget http://www.vim.org/scripts/download_script.php?src_id=14366 -O ${VIM_PYTHON_DIR}/pep8.vim
