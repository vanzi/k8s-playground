#!/usr/bin/env bash

set -e
cd $(dirname "$0")/..

docker build --file docker/Dockerfile --tag falcon-app .
REGISTRY_PORT=$(docker inspect k3d-finecluster-registry | grep HostPort | grep -Eo "[0-9]+" | head -1)
docker tag falcon-app:latest k3d-finecluster-registry.localhost:$REGISTRY_PORT/falcon-app:latest
docker push k3d-finecluster-registry.localhost:$REGISTRY_PORT/falcon-app:latest
