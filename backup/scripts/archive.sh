#!/bin/sh

ARCHIVE_NAME="snapshot-$(date '+%Y-%m-%d-%H%M%S')"
ARCHIVE_DEST="/var/tmp/$ARCHIVE_NAME.tar.gz"

# Create an archive of the /data directory and copy it to the target mountpoint.
# Rotate the snapshots by keeping only the most recent 10.
tar -acv -f "$ARCHIVE_DEST" --directory="/data" . \
	&& runuser containeruser /scripts/copy-rotate.sh "$ARCHIVE_DEST"

# Clean up.
rm "$ARCHIVE_DEST" 2> /dev/null
