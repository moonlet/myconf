# VIM Configuration

### 1. setup vundle

```shell
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

### 2. setup ctags & curl

```
sudo apt-get install ctags curl
```

### 3. get the .vimrc file

```shell
cp ~/.vimrc ~/.vimrc.bk
curl https://raw.githubusercontent.com/xiaorx/vimrc/master/vimrc > ~/.vimrc
```

### 4. boundle install

open your vim, and input `:BundleInstall`

### 5. if your terminal is `GNOME Terminal`

```
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./set_dark.sh
```
