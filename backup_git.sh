#!/bin/bash

# Define variables for paths and timestamp
TMP_DIR="/tmp"
REPO_URL="https://github.com/AshokTippaluri/AshokTippaluri.github.io.git"
REPO_NAME="AshokTippaluri.github.io"
BACKUP_DIR="/tmp/backup"
TIMESTAMP=$(date '+%Y-%m-%d-%H:%M')

# Change to the temporary directory
cd "$TMP_DIR"

# Clone the Git repository
git clone "$REPO_URL"

# Check if the repository directory exists
if [ -d "$TMP_DIR/$REPO_NAME" ]; then
    echo "Repository cloned successfully."

    # Create a tar.gz archive of the repository with a timestamp
    ARCHIVE_NAME="$TMP_DIR/${REPO_NAME}--$TIMESTAMP.tar.gz"
    tar -czvf "$ARCHIVE_NAME" "$TMP_DIR/$REPO_NAME"

    # Remove the cloned repository directory
    rm -rf "$TMP_DIR/$REPO_NAME"

    # Move the archive to the backup directory
    if [ ! -d "$BACKUP_DIR" ]; then
        mkdir -p "$BACKUP_DIR"
    fi
    mv "$ARCHIVE_NAME" "$BACKUP_DIR/${REPO_NAME}--$TIMESTAMP.tar.gz"

    echo "Backup created and moved to $BACKUP_DIR."
else
    echo "Repository does not exist."
fi
