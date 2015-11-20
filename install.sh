#!/bin/sh

if [ -z $VUNDLE_HOME ]; then
  VUNDLE_HOME=~/.vundle
fi
VUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git

if [ ! -e ~/.vim ]; then
  mkdir -p ~/.config
  ln -s `pwd`/vim ~/.vim
  ln -s `pwd`/vim ~/.config/nvim
  ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
fi

if [ ! -e $VUNDLE_HOME ]; then
#  mkdir -p $VUNDLE_HOME
  git clone $VUNDLE_REPO $VUNDLE_HOME/Vundle.vim
fi

vim "+set t_Co=0" +PluginInstall +qall

