#!/usr/bin/env bash

set -e

case "$1" in
  'exec')
    shift
    exec "$@"
    ;;
  'app')
    exec gunicorn \
      --bind 0.0.0.0:8000 \
      --workers 2 \
      --timeout 60 \
      --limit-request-field_size 65535 \
      --access-logfile - \
      falcon-app.wsgi:application
    ;;
  'migrate')
    sleep 5
    echo 'done migrating'
esac

