#!/bin/bash
# install-server.sh

BINARY_NAME="vault-sync-hub"
REPO_URL="https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/real-sync/server"

echo "Installing Vault Sync Hub Server..."

# 1. Download if missing
if [ ! -f "$BINARY_NAME" ]; then
    echo "Downloading binary..."
    curl -sSL "$REPO_URL/$BINARY_NAME" -o "$BINARY_NAME"
fi

# 2. Make executable
chmod +x "$BINARY_NAME"

echo "Success! The server is ready."
echo "To start: ./$BINARY_NAME"
