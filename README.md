#Vim Files

Note that you need to install pathogen and have the latest version of vim for this. The following commands assume that you are on ubuntu-linux or similar distros.

#### Some key remapped:
F2 => Toggles NERDTree. Exits out of all modes.
F3 => Opens CtrlP window.  Pressing F3 again just tries to re-open it.
F4 => Toggles taglist.  If activated in insert mode you will be put back to insert mode after taglist opens.

F5 => Previous tab.
F6 => Next Tab.

F7 => quits current window
F8 => quits all windows

#### Issues:
Currently snipmate only works so far until youcompleteme starts to obstruct it.  You try to find a fix for that sometime.

##Installation (in case you somehow messed up your system again)

#### Here's how to get the latest version of vim:

```
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial

sudo apt-get remove vim vim-runtime gvim

sudo apt-get remove vim-tiny vim-common vim-gui-common

cd ~
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --enable-perlinterp \
--enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim73
sudo make install
```

#### YouCompleteMe needs this:
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

#### Credits

The .vimrc file is a modified version of the "cleanest vimrc" by Yan Pritzker. http://yanpritzker.com/2012/01/20/the-cleanest-vimrc-youve-ever-seen/

Please check it out and thank him.  His .vimrc is especially useful if you are a new vim-er :D
