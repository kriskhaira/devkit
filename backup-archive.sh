#!/bin/bash
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /home ~/backup/archive/
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /etc/apache2/sites-available ~/backup/archive/
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /etc/nginx/sites-available ~/backup/archive/
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /etc/php5 ~/backup/archive/
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /etc/mysql ~/backup/archive/
rsync -apP --delete --exclude-from=backup-exclude.txt -apP /root/backup/ex* ~/backup/archive/