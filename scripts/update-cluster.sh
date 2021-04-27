#!/usr/bin/env bash

set -e
cd $(dirname "$0")/..

./scripts/build-push-image.sh
helm upgrade finechart ./finechart
