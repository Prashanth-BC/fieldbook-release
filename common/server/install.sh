#!/bin/bash
# install-server.sh (Manual Run Version)

BINARY_NAME="vault-sync-hub"

echo "Preparing Vault Sync Hub Server for manual run..."

# 1. Ensure binary exists
if [ ! -f "$BINARY_NAME" ]; then
    echo "Error: Binary $BINARY_NAME not found in current directory."
    exit 1
fi

# 2. Make executable
chmod +x "$BINARY_NAME"

echo "Success! The server is ready."
echo ""
echo "To start the server manually, run:"
echo "./$BINARY_NAME"
echo ""
echo "Note: You can set environment variables for secrets if needed:"
echo "PORT=8080 VAULT_SECRET_MYVAULT=my-secret ./$BINARY_NAME"
