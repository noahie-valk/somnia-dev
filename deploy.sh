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
cd ~/site
neocities push .

echo "✅ Deployed successfully!"

notify-send "Deployment finished!"
