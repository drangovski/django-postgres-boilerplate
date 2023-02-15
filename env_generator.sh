#!/bin/bash
set -eux

echo "POSTGRES_USER=db_user" >> .env
echo "POSTGRES_PASSWORD=db_password" >> .env
echo "POSTGRES_DB=project_db" >> .env

echo "DEBUG = True" >> .env
secret_key=$(python3 -c "import secrets; print(secrets.token_urlsafe())")
echo "SECRET_KEY = \"$secret_key\"" >> .env
echo "DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]" >> .env
echo "SQL_ENGINE=django.db.backends.postgresql" >> .env
echo "SQL_DATABASE=project_db" >> .env
echo "SQL_USER=db_user" >> .env
echo "SQL_PASSWORD=db_password" >> .env
echo "SQL_HOST=db" >> .env
echo "SQL_PORT=5432" >> .env