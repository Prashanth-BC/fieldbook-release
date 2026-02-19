# Fieldbook Release

This repository contains the release artifacts for the Fieldbook Sync system.

## Installation via Curl

### 1. Client (Obsidian Plugin)
Run these commands from your computer:
```bash
mkdir -p vault-sync-plugin && cd vault-sync-plugin
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/main.js -o main.js
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/manifest.json -o manifest.json
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/styles.css -o styles.css
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/install.sh -o install.sh
chmod +x install.sh
./install.sh /path/to/your/obsidian/vault
```

### 2. Server (Sync Hub)
Run these commands on your Raspberry Pi:
```bash
mkdir -p vault-sync-hub && cd vault-sync-hub
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/server/vault-sync-hub -o vault-sync-hub
curl -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/server/install.sh -o install.sh
chmod +x install.sh
./install.sh
./vault-sync-hub
```
