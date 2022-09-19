#!/usr/bin/env bash

set -o errexit

poetry install 

python manage.py collectstatics --no-input
python manage.py migrate