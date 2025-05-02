#!/bin/bash
docker compose -f docker-compose.local.yaml down
docker compose -f docker-compose.dev.yaml down
docker compose -f docker-compose.prod.yaml down
