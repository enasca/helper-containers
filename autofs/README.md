# Backup to autofs

A sidecar container which shares a volume with the main service and archives it to an autofs remote destination.
The container assumes that the autofs setup is done by the host, therefore the destination will simply appear upon access.

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
