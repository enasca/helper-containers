#!/bin/sh

userdel containeruser 2> /dev/null
groupdel containeruser 2> /dev/null
groupadd --gid "$USER_GID" containeruser \
	&& useradd --no-log-init --uid "$USER_UID" --gid containeruser containeruser

sleep infinity
