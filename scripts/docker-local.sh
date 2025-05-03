#!/bin/bash
docker compose \
  --env-file .env.local \
  -p local__sound-sphere-eng \
  -f docker-compose.local.yaml \
  up --build -d