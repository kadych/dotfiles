#!/bin/sh
git submodule init
git submodule update
yes | dotty/dotty.py dotfiles.js
pip install --user neovim
nvim -c PlugInstall -c qa
source ~/.bashrc
