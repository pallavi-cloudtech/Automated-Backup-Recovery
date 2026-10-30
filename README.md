Automated Backup and Recovery Using AWS

Project Overview

This project automates file backup and recovery using AWS EC2, Amazon S3, Linux, Bash scripting, and AWS CLI. It compresses files into timestamped archives, uploads them to S3, and provides a script to restore backed-up files.

Technologies Used

- AWS EC2
- Amazon S3
- Linux
- Bash scripting
- AWS CLI

Architecture

"Project Architecture" (architecture.png.jpeg)

Project Features

- Creates timestamped, compressed backup archives.
- Uploads backup archives to Amazon S3.
- Supports restoring files from S3 backups.
- Uses shell scripts to simplify backup and recovery tasks.

Project Files

- "backup.sh" — Creates a compressed archive and uploads it to S3.
- "restore.sh" — Downloads a backup archive from S3 and extracts its contents.
- "architecture.png.jpeg" — Project architecture diagram.

Prerequisites

- An AWS account.
- An EC2 Linux instance.
- AWS CLI installed and configured with appropriate S3 permissions.
- An existing S3 bucket.

Backup Process

1. Place the files to back up in the configured source directory.
2. Run "backup.sh" on the EC2 instance.
3. The script creates a timestamped compressed archive.
4. The archive is uploaded to the configured S3 bucket.

Recovery Process

1. Run "restore.sh" on the EC2 instance.
2. The script identifies the latest backup in S3.
3. It downloads and extracts the archive into the recovery directory.
4. Verify that the recovered files are present.

Security Considerations

- Use an IAM role with only the S3 permissions required by the scripts.
- Do not hard-code AWS access keys in scripts.
- Protect backup data and restrict access to the S3 bucket.

Learning Outcomes

- Practiced Linux and Bash scripting.
- Worked with AWS EC2, Amazon S3, and AWS CLI.
- Explored automated backup and file recovery workflows.
