# Test the paginated index endpoint by sending a GET request with pagination params
#!/usr/bin/env bash
set -euo pipefail
curl -s -i "http://localhost:3000/v1/projects?page[number]=1&page[size]=5" | head -n 30
