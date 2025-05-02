#!/bin/bash
# Stopped LOCAL
docker compose \
  --env-file .env.local \
  -p local__sound-sphere-eng \
  -f docker-compose.local.yaml \
  down
