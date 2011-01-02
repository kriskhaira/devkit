devkit is a configuration bundle for vim and bash with:

  * vim+pathogen+nerdtree and other vim plugins all set up as submodules
  * lots of bash aliases for LAMP stack sys admin catered towards Drupal, git, Ubuntu and Mac users with some Rails and Python thrown in

## Set up vim

    cd ~
    ln -s ~/path/to/devkit/.vimrc .vimrc 
    ln -s ~/path/to/devkit/.vim .vim

    cd devkit
    git submodule init
    git submodule update

## Set up bash

Put this in your .profile or .bashrc file:

    source ~/path/to/devkit/linux.bashrc
    source ~/path/to/devkit/mac.bashrc

