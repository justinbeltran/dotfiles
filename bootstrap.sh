#!/bin/bash

echo "Updating dotfiles...!"
repohome=$( dirname $(readlink -f "${BASH_SOURCE[0]}") )
cd ${repohome}
git submodule update --init --recursive

ln -sf ${repohome}/tmux $HOME/.tmux.conf
ln -sf ${repohome}/vimrc $HOME/.vimrc
ln -sf ${repohome}/zshrc $HOME/.zshrc

echo "Ding!"
