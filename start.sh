#!/bin/bash

cd app

source venv/bin/activate
python manage.py collectstatic --noinput
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
deactivate
