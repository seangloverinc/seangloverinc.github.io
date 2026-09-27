#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

docker run --rm -v "$(pwd)":/site bretfisher/jekyll-serve bundle update --all