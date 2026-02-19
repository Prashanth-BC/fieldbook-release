# Fieldbook Release

This repository contains the release artifacts for the Fieldbook Sync system.

## One-Line Installation

### 1. Client (Obsidian Plugin)
Run this from your computer (replace the path with your vault path):
```bash
curl -sSL https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/real-sync/client/install.sh | bash -s -- /path/to/your/obsidian/vault
```

### 2. Server (Sync Hub)
Run this on your Raspberry Pi:
```bash
mkdir -p vault-sync-hub && cd vault-sync-hub && curl -sSL https://raw.githubusercontent.com/Prashanth-BC/fieldbook-release/main/real-sync/server/install.sh | bash
```

---

## Alternative: Manual Install
Artifacts are available in `real-sync/client` and `real-sync/server`.
