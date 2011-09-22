devkit is a collection of useful tools for web development and sys admin on OS X and Ubuntu with:

  * a configuration bundle for vim+pathogen+nerdtree and other vim plugins set up as git submodules
  * bash aliases for sys admin using git, Ubuntu, Mac, LAMP, Drupal, Rails and Python
  * backup scripts

## Setup

    git clone git://github.com/kriskhaira/devkit.git ~/.devkit
    vi ~/.bashrc
    
Add to the end of .bashrc

    source ~/.devkit/linux.bashrc
    source ~/.devkit/mac.bashrc #for Mac OS X
    
We use .bashrc instead of .profile to ensure it works in screen

Start using it:

    source ~/.bashrc

## Set up vim

    cd ~
    ln -s ~/path/to/devkit/.vimrc .vimrc 
    ln -s ~/path/to/devkit/.vim .vim

    cd devkit
    git submodule init
    git submodule update


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