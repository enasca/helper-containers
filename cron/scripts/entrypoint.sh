#!/bin/sh

DEBIAN_FRONTEND=noninteractive \
	apt-get update \
	&& apt-get -y install --no-install-recommends cron

userdel containeruser 2> /dev/null
groupdel containeruser 2> /dev/null
groupadd --gid "$USER_GID" containeruser \
	&& useradd --no-log-init --uid "$USER_UID" --gid containeruser containeruser

# Start cron.
exec /usr/sbin/cron -f
