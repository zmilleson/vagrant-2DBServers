#!/usr/bin/env bash

##### Schedule Backups #####
# Define backup directory
backup_dir="/vagrant/backups/"

# Get today's date
backup_date='date +%d-%m-%Y'

# How many days of backups should be retained?
totalBackupDays=30

# Backup for today
sudo -u postgres pg_dump user_profiles>$backup_dir$(date +%d-%m-%Y).sql

# Cleanup backups beyond defined threshold above
find $backup_dir -type f -prune -mtime +${totalBackupDays} -exec rm -f {} \;