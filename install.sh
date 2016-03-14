#!/bin/sh
git submodule init
git submodule update
python3 dotty/dotty.py dotfiles.yaml
pip3 install --user neovim
nvim -c PlugInstall -c qa
