#!/bin/bash
#
#
<<info
====== Backup Script ========
info


src=$1
dest=$2


timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" "$src" > /dev/null

aws s3 sync $dest s3://div1-bucket 
echo "Backup completed successfully"
