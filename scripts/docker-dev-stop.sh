#!/bin/bash
# Stopped DEV
docker compose \
  --env-file .env.dev \
  -p dev__sound-sphere-eng \
  -f docker-compose.dev.yaml \
  down
