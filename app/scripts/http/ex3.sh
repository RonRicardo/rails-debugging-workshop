#!/usr/bin/env bash
set -euo pipefail
curl -s -i "http://localhost:3000/v1/projects?page[number]=2&page[size]=5" | head -n 30
