#!/bin/bash
rsync -apP --delete /home ~/backup/archive/
rsync -apP --delete /etc/apache2/sites-available ~/backup/archive/
rsync -apP --delete /etc/nginx/sites-available ~/backup/archive/
rsync -apP --delete /etc/php5 ~/backup/archive/
rsync -apP --delete /etc/mysql ~/backup/archive/
rsync -apP --delete /root/backup/ex* ~/backup/archive/