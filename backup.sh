#!/bin/bash

MYSQL_USER="root"
MYSQL_PASSWORD="Nm3ZaMg64"

DB_NAME="nsapool"

year=$(date +%Y)
month=$(date +%B)
day=$(date +%d)

sql_file="$year-$month-$day.sql"

out_archive="/backup/$year-$month-$day.tar.gz"

#echo "Backing up database $DB_NAME..."
/usr/bin/mysqldump --user=$MYSQL_USER --password=$MYSQL_PASSWORD $DB_NAME > $sql_file
tar -zcf $out_archive $sql_file
#echo "Backup up finished. Out file: $out_archive"
rm -f $sql_file
