#!/bin/bash
#
# Purpose :: Shell script for application backup.
#
# Author :: Shailesh Sutar
#
# Date :: 11 Feb 2014
#

FILE="vj_app`date +%d_%b_%Y`.tar.gz"

S3_BKP_PATH="s3://jmgbackup/virtualjerusalembkp/"

cd /data/html/

tar -cvjf /data/NEOVA/backups/$FILE ./

s3cmd --recursive put /data/NEOVA/backups/$FILE  $S3_BKP_PATH | tee -a /data/NEO                                                                                                                VA/logs/app-bkp.log

#END

