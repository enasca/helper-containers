# Traefik as TLS termination proxy

A Compose example on adding TLS termination to an existing service using Traefik.

## Usage

Define the parameters of the main service:

```sh
cat > .env <<EOF
HOST_HEADER_VALUE=example.org
MAIN_SERVICE_PORT=8080
EOF
```

Launch the Compose:
```sh
docker compose up --detach
```
