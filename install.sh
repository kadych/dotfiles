#!/bin/sh
if [ -z $VUNDLE_HOME ]; then
  VUNDLE_HOME=~/.vundle
fi

VUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git

if [ ! -e ~/.vim ]; then
  ln -s `pwd`/.vim ~/.vim
fi

if [ ! -e $VUNDLE_HOME ]; then
  git clone $VUNDLE_REPO $VUNDLE_HOME/Vundle.vim
fi

vim "+set t_Co=0" +PluginInstall +qall

