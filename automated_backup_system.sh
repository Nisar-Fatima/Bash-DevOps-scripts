#!/bin/bash

# Source folder
SOURCE="/home/ubuntu/shellscriptfolder"

# Backup location
DEST="/home/ubuntu"

# Current date
DATE=$(date +%F)

# Create backup directory if not exists
mkdir -p "$DEST"

# Create compressed backup
tar -czf "$DEST/backup-$DATE.tar.gz" "$SOURCE"

echo "Backup completed"

