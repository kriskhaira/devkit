#!/bin/bash

# Renumber the existing backups
rm ~/backup/latest-2.tar.gz
mv ~/backup/latest-1.tar.gz ~/backup/latest-2.tar.gz
mv ~/backup/latest.tar.gz ~/backup/latest-1.tar.gz

# Make a latest backup of the public folders
tar czvf --exclude-from=backup-exclude.txt ~/backup/latest.tar.gz ~/public*