Testing Documentation

Project: Automated Backup and Recovery Using AWS

1. Backup Testing

- Verify that the backup script creates a compressed archive.
- Verify that the backup archive is uploaded to Amazon S3.
- Verify that the backup file contains the required files.

2. Recovery Testing

- Verify that the restore script downloads the backup from S3.
- Verify that the downloaded archive extracts successfully.
- Verify that the recovered files are accessible.

3. Error Testing

- Check behavior when the source directory does not exist.
- Check behavior when the S3 bucket is unavailable.
- Verify that errors are reported clearly.

4. Expected Result

The backup and recovery scripts should successfully back up files to Amazon S3 and restore them when required.
