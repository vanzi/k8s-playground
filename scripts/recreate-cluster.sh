#!/usr/bin/env bash

set -e
cd $(dirname "$0")/..

k3d cluster delete finecluster
sleep 3
k3d cluster create finecluster --registry-create -p "8081:80@loadbalancer"

./scripts/build-push-image.sh
helm install finechart ./finechart
