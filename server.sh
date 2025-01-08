#!/bin/env sh

# https://github.com/dgraziotin/docker-nginx-webdav-nononsense
docker container run --rm \
  -p 127.0.0.1:8042:80 \
  -v ./www:/data \
  -e WEBDAV_USERNAME=user1 \
  -e WEBDAV_PASSWORD=password1 \
  -e PUID=1000 \
  -e PGID=1000 \
  dgraziotin/nginx-webdav-nononsense
