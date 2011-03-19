#!/bin/bash

# Renumber the existing backups
rm -rf ~/backup/latest-2
mv ~/backup/latest-1 ~/backup/latest-2
cp -r ~/backup/latest ~/backup/latest-1

# Make a latest backup of the public_html folders or any other folder starting with public_
rsync -apP --delete ~/public_* ~/backup/latest/

# Or you can do this if you already have some files in CVS and only want to back up some upload folders
# rsync -apP --delete ~/public_html/sites/default/files ~/backup/latest/SITENAME-files