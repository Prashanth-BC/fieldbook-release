# Fieldbook Release

This repository contains the release artifacts for the Fieldbook Sync system.

## Authentication
Since this is a private repository, you must use a GitHub Personal Access Token (PAT).
```bash
export GITHUB_TOKEN=your_token_here
```

## Installation via Curl

### 1. Client (Obsidian Plugin)
Run these commands from your computer:
```bash
mkdir -p vault-sync-plugin && cd vault-sync-plugin
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/main.js -o main.js
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/manifest.json -o manifest.json
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/styles.css -o styles.css
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/client/install.sh -o install.sh
chmod +x install.sh
./install.sh /path/to/your/obsidian/vault
```

### 2. Server (Sync Hub)
Run these commands on your Raspberry Pi:
```bash
mkdir -p vault-sync-hub && cd vault-sync-hub
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/server/vault-sync-hub -o vault-sync-hub
curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -L https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/common/server/install.sh -o install.sh
chmod +x install.sh vault-sync-hub
sudo ./install.sh
```
