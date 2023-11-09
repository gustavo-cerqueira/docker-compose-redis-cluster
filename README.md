# Docker Compose Redis Cluster Project

This project sets up a basic six nodes Redis cluster using Docker compose, which can be easily scaled and managed.

## Configuration

To get the Redis cluster running on your host's IP and discoverable by any interface on your host's network, modify the `IP_HOST` parameter in the `docker-compose.yml` file to your host's IP that is exposed to your client network.

## Starting the Cluster

To start the Redis cluster, run the following command from the project root directory:

```sh
docker compose up -d
```

## Stopping the Cluster

To stop the Redis cluster, run the following command from the project root directory:

```sh
docker compose down
```
