#!/bin/bash

# Set the backup directory and file name
backup_dir="/path/to/backup/directory"
backup_file="backup-$(date +%Y%m%d%H%M%S).tar.gz"

# Set the source directory to be backed up
src_dir="/path/to/source/directory"

# Create the backup
tar -czf $backup_dir/$backup_file $src_dir

# Print the results
echo "Backup created at $backup_dir/$backup_file"
