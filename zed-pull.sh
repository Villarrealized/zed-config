#!/bin/bash

USER=$(whoami)

REPO_DEST_DIR="/Users/$USER/Development/zed-config"

ZED_SOURCE_DIR="/Users/$USER/.config/zed"
ZED_DEST_DIR="$REPO_DEST_DIR/.config/zed"

# Copy zed config
git pull
cp -R "$ZED_DEST_DIR/" "$ZED_SOURCE_DIR/"
