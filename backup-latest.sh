#!/bin/bash

# Renumber the existing backups
rm -rf ~/backup/latest-2
mv ~/backup/latest-1 ~/backup/latest-2
rsync -apP --delete ~/backup/latest ~/backup/latest-1
mkdir ~/backup/latest

# Make a latest backup of the public folders
#rsync -avpP --delete --exclude-from=backup-exclude.txt ~/public* ~/backup/latest/
rsync -apP --delete ~/public* ~/backup/latest/