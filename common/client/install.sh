#!/bin/bash
# install-client.sh

# Target plugin ID
PLUGIN_ID="fieldbook-vault-sync"

echo "Installing Vault Sync Obsidian Plugin..."

# 1. Get Obsidian Vault Path
if [ -z "$1" ]; then
    echo "Please provide the path to your Obsidian Vault root."
    echo "Usage: ./install-client.sh /path/to/your/vault"
    exit 1
fi

VAULT_PATH="$1"
PLUGIN_DIR="$VAULT_PATH/.obsidian/plugins/$PLUGIN_ID"

# 2. Check if vault exists
if [ ! -d "$VAULT_PATH/.obsidian" ]; then
    echo "Error: Path is not a valid Obsidian Vault root (missing .obsidian folder)."
    exit 1
fi

# 3. Create plugin directory
mkdir -p "$PLUGIN_DIR"

# 4. Copy files (assuming they are in the same folder as this script in the release)
cp main.js manifest.json styles.css "$PLUGIN_DIR/"

echo "Success! Plugin installed to $PLUGIN_DIR"
echo "Please restart Obsidian and enable 'Vault Sync' in the Community Plugins settings."
