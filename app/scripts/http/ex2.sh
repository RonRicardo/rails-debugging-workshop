#!/usr/bin/env bash
set -euo pipefail
curl -s -i -X POST http://localhost:3000/v1/projects \
  -H "Content-Type: application/vnd.api+json" \
  -d '{"data":{"type":"projects","attributes":{"name":"X","status":"active"}}}'
