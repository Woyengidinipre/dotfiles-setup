#!/bin/bash

echo "🔧 Installing dotfiles..."

# Copy configs to home directory
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc

# Set permissions (optional for visibility)
chmod 644 ~/.bashrc ~/.vimrc

# Reload bash config
echo "🔄 Reloading shell..."
source ~/.bashrc

echo "✅ Dotfiles installed successfully!"

