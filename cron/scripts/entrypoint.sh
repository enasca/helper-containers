#!/bin/sh

DEBIAN_FRONTEND=noninteractive \
	apt-get update \
	&& apt-get -y install --no-install-recommends cron rsyslog

userdel containeruser 2> /dev/null
groupdel containeruser 2> /dev/null
groupadd --gid "$USER_GID" containeruser \
	&& useradd --no-log-init --uid "$USER_UID" --gid containeruser containeruser

# Start syslogd. Log messages from cron will appear at /var/log/syslog.
service rsyslog start

# Start cron.
exec /usr/sbin/cron -f
