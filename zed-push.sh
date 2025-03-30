#!/bin/bash

USER=$(whoami)

REPO_DEST_DIR="/Users/$USER/Development/zed-config"

ZED_SOURCE_DIR="/Users/$USER/.config/zed"
ZED_DEST_DIR="$REPO_DEST_DIR/.config/zed"

# Copy zed config
rsync -av --exclude='.tmp*' "$ZED_SOURCE_DIR/" "$ZED_DEST_DIR/"

# Sync
cd "$REPO_DEST_DIR"
git add .
git commit -m "Automatic backup $(date)"
git push origin main
