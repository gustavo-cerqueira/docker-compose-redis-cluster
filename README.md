# Docker Compose Redis Cluster Project

This project sets up a basic six nodes Redis cluster using Docker compose, which can be easily deployed, scaled and managed.

URL Reference: https://github.com/gustavo-cerqueira/docker-compose-redis-cluster

## One Step Configuration before starting

To get the Redis cluster running on your host's IP and discoverable by any interface on your host's network, modify the `IP_HOST` parameter in the `docker-compose.yml` file to your host's IP that is accessible to your redis client.

## Starting the Cluster

When the start is successful, `node_init` will automatically stop 10 seconds after initialization, fulfilling its function of just starting the cluster.

To start the Redis cluster, run the following command from the project root directory:

```sh
docker compose up -d
```

## Checking the Cluster

Let's access the container named node1 and check the cluster status:

```sh
docker exec -it node1 bash
```

```sh
redis-cli -c -p 6381
```

```sh
cluster info
```

```sh
cluster nodes
```

## Stopping the Cluster

To stop the Redis cluster, run the following command from the project root directory:

```sh
docker compose down
```
