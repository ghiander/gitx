#!/bin/bash

# Define the installation directory
INSTALL_DIR="$HOME/bin"

# Install within bin directory
mkdir -p "$INSTALL_DIR"
TEMP_DIR=$(mktemp -d)
git clone https://github.com/ghiander/gitx.git "$TEMP_DIR"
cp "$TEMP_DIR/gitx" "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/gitx"

# Clean up the temporary directory
rm -rf "$TEMP_DIR"

# Add the bin directory to PATH if not already present
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >> "$HOME/.bashrc"
    echo "Installation complete. Please restart your terminal or run 'source ~/.bashrc' to update your PATH."
else
    echo "Installation complete. You can now use the 'gitx' command."
fi
