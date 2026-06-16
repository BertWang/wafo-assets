#!/usr/bin/env bash
set -euo pipefail

# WAFO assets local deploy helper
# Usage:
#   1) Download WAFO_GitHub_Pages_Deploy_v1.zip
#   2) Unzip it locally
#   3) Run this script from inside the cloned wafo-assets repo:
#      bash scripts/deploy-assets-local.sh /path/to/WAFO_GitHub_Pages_Deploy_v1

SRC="${1:-}"
if [[ -z "$SRC" ]]; then
  echo "Usage: bash scripts/deploy-assets-local.sh /path/to/WAFO_GitHub_Pages_Deploy_v1"
  exit 1
fi

if [[ ! -d "$SRC" ]]; then
  echo "Source folder not found: $SRC"
  exit 1
fi

required=("assets" "css" "demo" "manifest" "preview" "docs" "index.html" "README.md" ".nojekyll")
for item in "${required[@]}"; do
  if [[ ! -e "$SRC/$item" ]]; then
    echo "Missing required item in source: $item"
    exit 1
  fi
done

rsync -av --delete \
  --exclude='.git' \
  "$SRC"/ ./

count=$(find . -path ./.git -prune -o -type f -print | wc -l | tr -d ' ')
size=$(du -sh . --exclude=.git | cut -f1)

echo "Copied WAFO assets into repo."
echo "File count excluding .git: $count"
echo "Repo size excluding .git: $size"
echo

git status --short

echo
 echo "Next commands:"
echo "  git add ."
echo "  git commit -m 'Deploy WAFO Design Asset Library v2 clean full'"
echo "  git push origin main"
