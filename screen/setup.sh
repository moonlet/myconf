#!/bin/bash

# 1. setup screen
sudo apt-get install screen

# 2. get the .screenrc file
curl https://raw.githubusercontent.com/xiaorx/vimrc/master/screen/screenrc > ${HOME}/.screenrc
