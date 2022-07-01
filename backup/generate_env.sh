#!/usr/bin/env sh

cat > .env <<EOF
# UID and GID of the helper container
USER_UID=$(id -u)
USER_GID=$(id -g)

# Mountpoint of the remote filesystem on the host
MOUNTPOINT=/projects/myproject

# Target directory, relative to MOUNTPOINT
BACKUPDEST=backup
EOF
