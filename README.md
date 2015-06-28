A collection of useful tools for web development and sys admin on OS X and Ubuntu.

There used to be a lot of my config files here but they have since been moved to my dotfiles repo:
https://github.com/kriskhaira/dotfiles

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
