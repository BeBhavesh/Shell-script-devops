#!/bin/bash
# ==============================================
# Simple Disk Usage Monitoring Script
# ==============================================
# Checks root (/) disk usage and sends email
# alert if usage exceeds threshold
# ==============================================

# 1️⃣ Set the threshold percentage for disk usage
THRESHOLD=80

# 2️⃣ Set the email address where alerts will be sent
Email="xyz@gmail.com"

# 3️⃣ Get current disk usage of root (/) partition
# - df -h /       : shows disk usage of root in human-readable format
# - awk 'NR==2 {print $5}' : takes the 5th column (usage %) of second line (actual data)
# - tr -d '%'     : removes the % sign to allow numeric comparison
DISK_USAGE=$( df -h / | awk 'NR==2 {print $5}' | tr -d '%' )

# 4️⃣ Compare current disk usage with threshold
if [ $DISK_USAGE -gt $THRESHOLD ]; then

    # 4a️⃣ Print warning on terminal with hostname
    echo "Warning: Disk usage is ${DISK_USAGE}% on $(hostname)"

    # 4b️⃣ Send email alert
    # - mail -s : specifies subject line
    echo "Warning: Disk usage is full" | mail -s "Disk Usage Alert" $Email

fi