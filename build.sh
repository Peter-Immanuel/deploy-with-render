#!/usr/bin/env bash

set -o errexit

poetry shell
poetry install 

python3 manage.py collectstatics --no-input
python3 manage.py migrate