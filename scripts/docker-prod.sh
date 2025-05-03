#!/bin/bash
docker compose -f docker-compose.prod.yaml down --volumes --remove-orphans
docker image prune -a -f
docker compose \
  --env-file .env.prod \
  -p prod__sound-sphere-eng \
  -f docker-compose.prod.yaml \
  up --build -d