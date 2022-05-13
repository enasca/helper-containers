# Volume migration

A sidecar container for migrating a Docker volume between hosts.

## Usage

On the source:
```sh
docker compose up --detach
docker compose exec migrate /scripts/archive.sh
```

On the destination:
```sh
docker compose up --detach
docker compose exec migrate /scripts/unpack.sh
```
