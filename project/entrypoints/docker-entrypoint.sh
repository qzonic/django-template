#!/bin/sh
set -e

./entrypoints/wait-for-postgres.sh
python manage.py migrate --no-input
python manage.py collectstatic --no-input

exec "$@"
