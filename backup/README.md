# Backup to autofs

A sidecar container which shares a volume with the main service and archives it to a remote filesystem mounted on the host.
The container assumes that the mountpoint is already set up.

## Getting started

Generate the `.env` file:

```sh
./generate_env.sh
```

Adapt the values depending on the host configuration.

Launch the Compose:

```sh
docker compose up --detach
```

Whenever needed, create an archive:

```sh
docker compose exec backup /scripts/archive.sh
```
