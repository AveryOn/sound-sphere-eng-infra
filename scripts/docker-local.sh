#!/bin/bash
docker compose -f docker-compose.local.yaml down --volumes --remove-orphans
docker image prune -a -f
docker compose \
  --env-file .env.local \
  -p local__sound-sphere-eng \
  -f docker-compose.local.yaml \
  up --build -d