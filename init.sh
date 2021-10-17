#!/usr/bin/env bash

APP_DIR="$1"

if [ ! -f "$APP_DIR/.env" ]; then
    /usr/bin/cp "$APP_DIR/.env.example" "$APP_DIR/.env"
fi

/usr/bin/sed -i "s@^APP_DIR=.*@APP_DIR=${APP_DIR}@" "$APP_DIR/.env"

VOLUMES=("wp-deploy-db" "wp-deploy-app")

for VOLUME in "${VOLUMES[@]}"
do
  if (( $(sudo docker volume ls | grep "$VOLUME")  )); then
    sudo /usr/bin/docker volume create "$VOLUME"
  fi
done
