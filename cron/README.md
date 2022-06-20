# Cron job

A sidecar container which executes a script as a regular user on a schedule.

## Usage

Define the UID and GID of the cron job user:

```sh
cat > .env <<EOF
USER_UID=$(id -u)
USER_GID=$(id -g)
EOF
```

Define the SCHEDULE variable using cron syntax.
For example:

```sh
cat >> .env <<EOF
SCHEDULE='15 4 * * *'
EOF
```

Add a custom script at `scripts/job.sh`.
Note that `cron` does not inherit environment variables from the shell or from startup files such as `~/.profile`.

Finally, launch the Compose:

```sh
docker compose up --detach
```
