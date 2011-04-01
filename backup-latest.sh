#!/bin/bash

# Renumber the existing backups
rm -rf ~/backup/latest-2
mv ~/backup/latest-1 ~/backup/latest-2
cp -r ~/backup/latest ~/backup/latest-1

# Optional MySQL dumps
mysqldump -u USER -p PASS DATABASE > DATABASE.sql

# Make a latest backup of the public_html folders or any other folder starting with public_
rsync -apP --delete ~/public_* ~/backup/latest/
rsync -apP --delete ~/*.sql ~/backup/latest/