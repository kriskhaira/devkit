## Setup .vim

    cd ~
    ln -s ~/path/to/devkit/.vimrc .vimrc 
    ln -s ~/path/to/devkit/.vim .vim

    cd devkit
    git submodule init
    git submodule update

## Set up bash

Put this in your .profile/.bashrc:

    source ~/path/to/devkit/linux.bashrc
    source ~/path/to/devkit/mac.bashrc

