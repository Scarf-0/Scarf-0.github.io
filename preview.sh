#!/usr/bin/env bash
set -euo pipefail

restore_github_pages_fallback() {
  if [[ -f _site/index.html && -f _site/404.html ]]; then
    cp _site/index.html index.html
    cp _site/404.html 404.html
  fi
}

trap restore_github_pages_fallback EXIT INT TERM

if command -v quarto >/dev/null 2>&1; then
  quarto preview
  exit
fi

/Users/sc-xin/.local/quarto-1.9.38/bin/quarto preview
