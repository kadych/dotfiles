#!/bin/sh

python3 dotty/dotty.py dotfiles.yaml
pip3 install --user neovim
nvim -u NONE -c PlugInstall -c qa
