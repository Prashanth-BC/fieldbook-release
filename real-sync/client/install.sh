#!/bin/bash
# install-client.sh

PLUGIN_ID="fieldbook-vault-sync"
REPO_URL="https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client"

echo "Installing Vault Sync Obsidian Plugin..."

# 1. Get Obsidian Vault Path
VAULT_PATH="$1"
if [ -z "$VAULT_PATH" ]; then
    echo "Usage: curl -sSL $REPO_URL/install.sh | bash -s -- /path/to/your/vault"
    exit 1
fi

if [ ! -d "$VAULT_PATH/.obsidian" ]; then
    echo "Error: $VAULT_PATH is not a valid Obsidian Vault root."
    exit 1
fi

PLUGIN_DIR="$VAULT_PATH/.obsidian/plugins/$PLUGIN_ID"
mkdir -p "$PLUGIN_DIR"

# 2. Download or use local files
for f in main.js manifest.json styles.css; do
    if [ -f "$f" ]; then
        cp "$f" "$PLUGIN_DIR/"
    else
        curl -sSL "$REPO_URL/$f" -o "$PLUGIN_DIR/$f"
    fi
done

echo "Success! Plugin installed to $PLUGIN_DIR"
echo "Restart Obsidian and enable 'Vault Sync' in Community Plugins."
