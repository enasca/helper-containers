#!/bin/sh

cp "$1" "/autofs/$MOUNTPOINT/"
ls -1t "/autofs/$MOUNTPOINT"/* | awk "NR>10" | xargs -d "\n" rm --
