#!/bin/bash 

# TODO Maybe we can automate the update process by automatically looking for changes and ask if 
#      we want to update with them.

echo "> absorbing local dotfiles"
cp ~/.vimrc ./vimrc
cp ~/.tmux.conf ./tmux.conf
cp ~/.gvimrc ./gvimrc

