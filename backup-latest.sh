#!/bin/bash
rm ~/backup/latest-3.tar.gz
mv ~/backup/latest-2.tar.gz ~/backup/latest-3.tar.gz
mv ~/backup/latest-1.tar.gz ~/backup/latest-2.tar.gz
mv ~/backup/latest.tar.gz ~/backup/latest-1.tar.gz
tar czvf ~/backup/latest.tar.gz ~/public_html/sites/default/files