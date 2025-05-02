#!/bin/bash
# Stopped LOCAL
docker compose \
  --env-file .env.local \
  -p local__sound-sphere-eng \
  -f docker-compose.local.yaml \
  down

# Stopped DEV
docker compose \
  --env-file .env.dev \
  -p dev__sound-sphere-eng \
  -f docker-compose.dev.yaml \
  down

# Stopped PROD
docker compose \
  --env-file .env.prod \
  -p prod__sound-sphere-eng \
  -f docker-compose.prod.yaml \
  down
