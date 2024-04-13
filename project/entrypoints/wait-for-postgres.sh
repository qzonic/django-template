#!/bin/sh
until pg_isready -h $POSTGRES_HOST -p $POSTGRES_PORT; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - moving to manage.py"
