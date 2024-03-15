#!/bin/sh
set -e
cd "$(dirname "$0")"

# run pint
docker compose exec -u webuser workspace ./vendor/bin/pint
