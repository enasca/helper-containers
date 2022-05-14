# Tailscale

A sidecar container which puts the main service in a Tailscale network.

## Usage

Launch the Compose in the background, then log into Tailscale:

```sh
docker compose up --detach
docker compose exec tailscaled tailscale up
```

The Tailscale container will print an authentication link to standard output.
Open the Tailscale link in a browser and complete the authentication process.

Since the Compose file defines a Docker volume to store the authentication token, the machine will join the network automatically on subsequent runs.

To check Tailscale's status:

```sh
docker compose exec tailscaled tailscale status
```

To check the assigned IP address:

```sh
docker compose exec tailscaled ip addr show tailscale0
```
