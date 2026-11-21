#!/bin/sh
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Instale o Node.js: https://nodejs.org"; exit 1; }
(sleep 1; (xdg-open http://localhost:8080 || open http://localhost:8080) >/dev/null 2>&1) &
node tools/serve.mjs 8080
