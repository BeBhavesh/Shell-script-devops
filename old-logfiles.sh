#!/bin/bash
# ==============================================
# Log Cleanup Script
# ==============================================
# Deletes log files older than a specified number of days
# and prints how many files were deleted
# ==============================================

# 1️⃣ Directory containing log files
LOG_DIR="/var/log/myapp"   

# 2️⃣ Number of days after which logs should be deleted
DAYS_OLD=30

# 3️⃣ List log files older than DAYS_OLD (optional, for review)
# - find $LOG_DIR -name "*.log" : find all .log files
# - -mtime +$DAYS_OLD           : modified more than $DAYS_OLD days ago
# - -type f                     : only regular files
echo "Listing log files older than $DAYS_OLD days in $LOG_DIR:"
find "$LOG_DIR" -name "*.log" -mtime +$DAYS_OLD -type f
echo

# 4️⃣ Delete log files older than DAYS_OLD
find "$LOG_DIR" -name "*.log" -mtime +$DAYS_OLD -type f -delete

# 5️⃣ Count how many files were deleted (optional)
DELETED_COUNT=$(find "$LOG_DIR" -name "*.log" -mtime +$DAYS_OLD -type f | wc -l)

# 6️⃣ Print summary
echo "Deleted $DELETED_COUNT log files older than $DAYS_OLD days from $LOG_DIR"