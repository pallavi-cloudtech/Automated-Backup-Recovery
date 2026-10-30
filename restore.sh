#!/bin/bash
set -e

BUCKET="backup-recovery-2026"
RESTORE_DIR="/home/ec2-user/recovered-backup"

mkdir -p "$RESTORE_DIR"

LATEST_BACKUP=$(aws s3 ls "s3://$BUCKET/backups/" | sort -k1,1 -k2,2 | tail -n 1 | awk '{print $4}')
if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup found in S3!"
    exit 1
fi

aws s3 cp "s3://$BUCKET/backups/$LATEST_BACKUP" /tmp/

tar -xzf "/tmp/$LATEST_BACKUP" -C "$RESTORE_DIR"

rm -f "/tmp/$LATEST_BACKUP"

echo "Recovery completed successfully!"
echo "Restored files are in: $RESTORE_DIR"
