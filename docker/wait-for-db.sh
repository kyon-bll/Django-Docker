#!/bin/bash

set -e

shift
cmd="$@"

until ./manage.py inspectdb; do
  >&2 echo "Database is unavailable - sleeping"
  sleep 1
done

>&2 echo "Database is up - executing command"
exec $cmd
