#!/bin/bash
docker compose \
  --env-file .env.prod \
  -p prod__sound-sphere-eng \
  -f docker-compose.prod.yaml \
  up --build -d