#!/bin/env sh

rclone --config rclone.conf \
  sync /path/to/datasets public-ds:/datasets \
  --progress --copy-links --exclude="/.git/**"
