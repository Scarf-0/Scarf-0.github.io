#!/usr/bin/env bash
set -euo pipefail

QUARTO="/Users/sc-xin/.local/quarto-1.9.38/bin/quarto"
NODE_BIN="/Users/sc-xin/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/bin"
PNPM="/Users/sc-xin/.cache/codex-runtimes/codex-primary-runtime/dependencies/bin/fallback/pnpm"

if command -v quarto >/dev/null 2>&1; then
  QUARTO="$(command -v quarto)"
fi

restore_github_pages_fallback() {
  cp _site/index.html index.html
  cp _site/404.html 404.html
}

"$QUARTO" render
restore_github_pages_fallback
PATH="$NODE_BIN:$PATH" "$PNPM" dlx wrangler@4.110.0 pages deploy _site \
  --project-name weijie-zhou \
  --branch gh-pages \
  --commit-dirty=true
