#!/bin/bash
# ==============================================
# Simple Backup Script
# ==============================================
# Creates a compressed backup of a source directory
# Stores it in a backup directory
# Deletes backups older than 7 days
# ==============================================

# 1️⃣ Source directory to backup
SOURCE_DIR="backup/newfolder"  # Change to your source path

# 2️⃣ Directory where backups will be stored
BACKUP_DIR="Backupfolder"

# 3️⃣ Generate timestamp for unique backup filename
# Using date format: HH-MM-SS_DDMMYY
# (colon removed to avoid filename issues)
DATE=$(date +%H-%M-%S_%d%m%y)

# 4️⃣ Backup filename
BACKUP_FILE="backup_${DATE}.tar.gz"

# 5️⃣ Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# 6️⃣ Create compressed backup using tar
# -c : create archive
# -z : gzip compression
# -f : filename
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# 7️⃣ Check if tar command was successful
if [ $? -eq 0 ]; then
    echo "✅ Backup successful: $BACKUP_DIR/$BACKUP_FILE"
else
    echo "❌ Backup failed"
    exit 1 
fi

# 8️⃣ Delete old backups older than 7 days
# -mtime +7 : files older than 7 days
# -type f   : only regular files
find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +7 -type f -delete
echo "🧹 Old backup files deleted"