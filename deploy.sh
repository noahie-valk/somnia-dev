#!/bin/bash
# deploy.sh

# Exit on error
set -e

# Commit changes
git add .
git commit -m "${1:-New Chapter}"

# Push to GitHub
git push

# Build and deploy
zola build
neocities-sync ~/src/site

echo "✅ Deployed successfully!"
