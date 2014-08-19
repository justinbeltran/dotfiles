#!/bin/bash

echo "Updating dotfiles...!"
repohome=$( pwd ) 
cd ${repohome}
git submodule update --init --recursive

ln -sf ${repohome}/tmux $HOME/.tmux.conf
ln -sf ${repohome}/vimrc $HOME/.vimrc
ln -sf ${repohome}/zshrc $HOME/.zshrc
ln -sf ${repohome}/tmuxtheme $HOME/.tmuxtheme.conf

echo "Ding!"
