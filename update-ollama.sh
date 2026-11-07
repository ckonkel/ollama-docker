#!/usr/bin/env bash
set -euo pipefail
cd -- "$(docker inspect -f "{{ index .Config.Labels \"com.docker.compose.project.working_dir\" }}" ollama)"
docker compose up -d --no-deps --pull always ollama
