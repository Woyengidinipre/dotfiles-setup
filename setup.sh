#!/bin/bash

echo "🔧 Starting dotfiles setup..."

# Backup existing configs
mkdir -p ~/.dotfiles_backup
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.dotfiles_backup/bashrc.bak
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.dotfiles_backup/vimrc.bak

# Symlink new configs
ln -sf $(pwd)/.bashrc ~/.bashrc
ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/aliases.sh ~/.aliases

# Ensure aliases are loaded
if ! grep -q "source ~/.aliases" ~/.bashrc; then
    echo "source ~/.aliases" >> ~/.bashrc
fi

# Reload shell
source ~/.bashrc

echo "✅ Setup complete!"

