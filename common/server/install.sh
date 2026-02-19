#!/bin/bash
# install-server.sh

BINARY_NAME="vault-sync-hub"
SERVICE_NAME="vault-sync-hub"

echo "Installing Vault Sync Hub Server..."

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (sudo)." 
   exit 1
fi

# 1. Move binary
if [ ! -f "$BINARY_NAME" ]; then
    echo "Error: Binary $BINARY_NAME not found in current directory."
    exit 1
fi

chmod +x "$BINARY_NAME"
mv "$BINARY_NAME" /usr/local/bin/

# 2. Create Service File
echo "Setting up systemd service..."
cat > /etc/systemd/system/$SERVICE_NAME.service <<EOF
[Unit]
Description=Vault Sync Hub Server
After=network.target

[Service]
Type=simple
ExecStart=/usr/local/bin/$BINARY_NAME
Restart=always
RestartSec=5
Environment=NODE_ENV=production
Environment=PORT=8080

[Install]
WantedBy=multi-user.target
EOF

# 3. Reload and Start
systemctl daemon-reload
systemctl enable $SERVICE_NAME
systemctl start $SERVICE_NAME

echo "Success! Server installed and started."
echo "Status: systemctl status $SERVICE_NAME"
echo ""
echo "Note: You may need to add secrets to the service file in /etc/systemd/system/$SERVICE_NAME.service"
echo "Example: Environment=VAULT_SECRET_MYVAULT=secret"
