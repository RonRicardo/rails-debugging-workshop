# Test the project creation endpoint by sending a POST request
#!/usr/bin/env bash
set -euo pipefail
curl -s -i -X POST http://localhost:3000/v1/projects \
  -H "Content-Type: application/json" \
  -d '{"data":{"type":"projects","attributes":{"name":"X","status":"active"}}}'