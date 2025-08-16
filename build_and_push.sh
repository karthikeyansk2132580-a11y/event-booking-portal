#!/usr/bin/env bash
set -euo pipefail
REGISTRY="ghcr.io/<user>"

docker build -t ${REGISTRY}/event-backend:latest ./backend
docker build -t ${REGISTRY}/event-frontend:latest ./frontend

docker push ${REGISTRY}/event-backend:latest
docker push ${REGISTRY}/event-frontend:latest
