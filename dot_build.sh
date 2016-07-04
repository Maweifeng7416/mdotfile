#!/bin/bash

apt-get install zsh
apt-get install tmux
git clone https://github.com/Maweifeng7416/Vundle.vim ~/mdotfile/depend/.vim/bundle/vundle
git clone https://github.com/Maweifeng7416/oh-my-zsh ~/mdotfile/depend/.oh-my-zsh
git clone https://github.com/Maweifeng7416/autojump ~/mdotfile/depend/autojump
cd ~/mdotfile/depend/autojump
python install.py
cd ~/mdotfile
ln -s ~/mdotfile/.vimrc ~/.vimrc
ln -s ~/mdotfile/.vimrc.bundles ~/.vimrc.bundles
ln -s ~/mdotfile/.zshrc ~/.zshrc
ln -s ~/mdotfile/depend/.vim ~/.vim
ln -s ~/mdotfile/depend/.pip ~/.pip
ln -s ~/mdotfile/depend/.local ~/.local
