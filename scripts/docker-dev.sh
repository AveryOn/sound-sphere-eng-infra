#!/bin/bash
docker compose -f docker-compose.dev.yaml down --volumes --remove-orphans
docker image prune -a -f
docker compose \
  --env-file .env.dev \
  -p dev__sound-sphere-eng \
  -f docker-compose.dev.yaml \
  up --build -d