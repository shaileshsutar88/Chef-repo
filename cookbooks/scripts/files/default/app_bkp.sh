#!/bin/bash
#
# Purpose :: Shell script for application backup.
#
# Author :: Shailesh Sutar
#
# Date :: 11 Feb 2014
#

FILE="web_app`date +%d_%b_%Y`.tar.gz"

S3_BKP_PATH="s3://bucket_location/folder-name"

cd /var/www/html/

tar -cvjf /data//backups/$FILE ./

s3cmd --recursive put /data/backups/$FILE  $S3_BKP_PATH | tee -a /data/                                                                                                                VA/logs/app-bkp.log

#END

