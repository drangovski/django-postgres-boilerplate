#!/bin/bash
set -eux
if ! /bin/ls ./backend/project.egg-info; then
    echo "Installing project in project.egg-info"
    python ./backend/setup.py develop
else
    echo "project is already installed in project.egg-info"
fi

sleep 5

django-admin migrate --noinput
django-admin runserver 0.0.0.0:8000