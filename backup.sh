#!/bin/bash
set -e

SOURCE_DIR="/home/ec2-user/backup-demo"
BUCKET="backup-recovery-2026"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup-$TIMESTAMP.tar.gz"

tar -czf "/tmp/$BACKUP_NAME" -C "$SOURCE_DIR" project.txt

aws s3 cp "/tmp/$BACKUP_NAME" "s3://$BUCKET/backups/$BACKUP_NAME"

echo "Backup completed successfully: $BACKUP_NAME"

rm -f "/tmp/$BACKUP_NAME"
