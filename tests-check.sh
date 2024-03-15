#!/bin/sh
set -e
cd "$(dirname "$0")"

# read filter if passed as argument
if [ -z "$1" ]
then
  filter=""
else
  filter="--filter $1"
fi
# run tests
docker compose exec -u webuser workspace ./vendor/bin/pest $filter
