#!/bin/bash 

# TODO Check if the files already exist and if so, do a comparison for what is changing.
# TODO Check if the user has git.

# Setup tmux
echo "> Copying tmux.conf to ~/.tmux.conf"
cp ./tmux.conf ~/.tmux.conf
echo "> Downloading tmux themes from jimeh/tmux-themepack to ~/.tmux-themepack/"
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# Setup vim
echo "> Copying vimrc to ~/.vimrc"
cp ./vimrc ~/.vimrc
echo "> Copying gvimrc to ~/.gvimrc"
cp ./gvimrc ~/.gvimrc
echo "> Making bundle directory"
mkdir -p ~/.vim/bundle/
echo "> Getting latest Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "> Finish this up by starting vim and running :PluginInstall"
