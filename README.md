devkit is a collection of useful tools for mac development and ubuntu systems administration with:

  * a configuration bundle vim+pathogen+nerdtree and other vim plugins all set up as submodules
  * lots of bash aliases for LAMP stack sys admin catered towards Drupal, git, Ubuntu and Mac users with some Rails and Python thrown in
  * backup scripts

## Set up vim

    cd ~
    ln -s ~/path/to/devkit/.vimrc .vimrc 
    ln -s ~/path/to/devkit/.vim .vim

    cd devkit
    git submodule init
    git submodule update
    
    ##

## Set up bash

On Linux, put this in ~/.bashrc:

    source ~/path/to/devkit/linux.bashrc

On a Mac, put the above and the following in ~/.bashrc. You can always put it in .profile, but then it won't work in screen:

    source ~/path/to/devkit/mac.bashrc

## Set up backups on Ubuntu servers

Schedule the following with cron on your user

  # Backup files daily at 6am and 10pm PST (9am and 1pm GMT+8)
  00 6/22 * * *  ~/devkit/backup-latest.sh
  
  # Archive backups weekly on Sundays, 8am PST (11pm GMT+8)
  00 8 * * 0 ~/devkit/backup-archive.sh

Tip: when having several users on a machine, you should run the daily backup as the user and the weekly backup as root