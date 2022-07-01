#!/bin/sh

cp "$1" "/mountpoint/$BACKUPDEST/"
ls -1t "/mountpoint/$BACKUPDEST/"* | awk "NR>10" | xargs -d "\n" rm --
