# Playground

Minimal local playground with a simple Python app packaged in a Docker image,
wrapped as a Helm chart and deployed to a local Kubernetes cluster using k3d
and its local image registry.

It supports a simple trick for forcing an application re-deployment on demand
without any changes in configuration (i.e. rolling image tags).

## Setup

Install `docker`, `kubectl` and `k3d`.

Create a cluster (or recreate it if it exists):
```bash
./scripts/recreate-cluster.sh
```

## Test

On host:
```bash
curl 127.0.0.1:8081
```

## Upgrade

Make changes in the application and run:
```bash
./scripts/update-cluster.sh
```

## Teardown

Delete local cluster:
```bash
k3d cluster delete finecluster
```
