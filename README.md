# Backup Script

This script is a simple bash script used to create backups of a specified source directory and store the backup in a designated backup directory. The purpose of the script is to provide an easy and automated way to take backups of important files or directories.

## Usage

1. First, make sure you have a destination directory (backup directory) where you want to store your backups. Replace `/path/to/backup/directory` with the actual path to the directory where you want to store your backups. For example: `/home/user/backups`.

2. Next, specify the source directory you want to back up. Replace `/path/to/source/directory` with the path to the directory you wish to back up. For example: `/home/user/documents`.

3. Save the script with a suitable filename, e.g., `backup.sh`.

4. Make the script executable with the following command:
   ```
   chmod +x backup.sh
   ```

5. Run the script using the following command:
   ```
   ./backup.sh
   ```

## How the Script Works

1. The script sets the backup directory and generates a filename for the backup based on the current date and time. The variable `$backup_dir` is used to specify the destination directory, and `$backup_file` is used to create a unique filename for each backup in the format `backup-YYYYMMDDHHMMSS.tar.gz`.

2. The source directory to be backed up is specified using the variable `$src_dir`.

3. The script then creates a backup using the `tar` command with the following options:
   - `-c`: Create a new archive.
   - `-z`: Compress the archive using gzip.
   - `-f`: Specifies the output file for the archive.

   The backup is compressed and stored in the backup directory with the generated filename.

4. Finally, the script prints a message indicating the successful completion of the backup and provides the path to the newly created backup file.

## Note

- You can schedule this script to run automatically at specific intervals using tools like `cron` on Linux or `Task Scheduler` on Windows to create regular backups.

- It is essential to ensure that the backup directory has sufficient storage capacity to store multiple backups over time.

- For better security, consider restricting access to the backup directory to only authorized users.

- Customize the script as per your specific backup needs, such as including/excluding certain files or directories from the backup or implementing retention policies for old backups.

---
