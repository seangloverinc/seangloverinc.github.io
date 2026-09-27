#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

docker run -p 4000:4000 -v "$(pwd)":/site bretfisher/jekyll-serve