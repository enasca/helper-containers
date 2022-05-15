#!/usr/bin/env sh

cat > .env <<EOF
# UID and GID of the helper container.
USER_UID=$(id -u)
USER_GID=$(id -g)

# Root of the autofs mountpoints on the host.
# It must exist on the local filesystem.
AUTOFS_ROOT=/projects

# Target location, relative to AUTOFS_ROOT. Whenever this path is accessed
# by the container, the autofs setup on the host mounts it.
MOUNTPOINT=myproject
EOF
