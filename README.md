devkit is a collection of useful tools for web development and sys admin on OS X and Ubuntu with:

  * a configuration bundle for vim+pathogen+nerdtree and other vim plugins set up as git submodules
  * bash aliases for sys admin using git, Ubuntu, Mac, LAMP, Drupal, Rails and Python
  * backup scripts

## Set up vim

    cd ~
    ln -s ~/path/to/devkit/.vimrc .vimrc 
    ln -s ~/path/to/devkit/.vim .vim

    cd devkit
    git submodule init
    git submodule update

## Set up bash

Put this in ~/.bashrc for Linux:

    source ~/path/to/devkit/linux.bashrc
    
Or for Mac:

    source ~/path/to/devkit/mac.bashrc

Putting this in .bashrc instead of .profile will ensure it works in screen

## Set up backups on Ubuntu servers

Schedule the following with cron on your user 

    # Backup files daily at 6am and 10pm PST (9pm and 1pm GMT+8)
    00 6/22 * * *  ~/devkit/backup-latest.sh
  
    # Make remote backups weekly on Sundays, 8am PST (11pm GMT+8)
    00 8 * * 0 ~/devkit/backup-archive.sh
  
Go ahead and copy these files elsewhere to override them

Tip: when having several users on a machine, you should run the regular backups as the user and the remote backups as root

This is not your complete backup solution. Also use:

  * git
  * disk image cloning (Linode has this)
  * backup to your local machine (last ditch effort)