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

Modify the `crontab` file by editing the schedule as needed.
Environment variables for the cron job must be defined in this file as Cron does not inherit the user's environment.

Launch the Compose:

```sh
docker compose up --detach
```
