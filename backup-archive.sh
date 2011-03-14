#!/bin/bash
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /home ~/backup/archive/
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /etc/apache2/sites-available ~/backup/archive/
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /etc/nginx/sites-available ~/backup/archive/
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /etc/php5 ~/backup/archive/
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /etc/mysql ~/backup/archive/
rsync --delete --exclude-from="~/devkit/backup-exclude.txt" -apP /root/backup/ex* ~/backup/archive/