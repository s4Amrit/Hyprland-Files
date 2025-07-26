#!/bin/bash

# Check if script is run with sudo
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root. Please use sudo."
  exit 1
fi

# List of packages to install
PACKAGES=(
  vlc
  vlc-plugins-all
  calibre
  evince
  gnome-calculator
  gnome-disk-utility
  jdownloader2
  zen-browser-bin
  brave-bin
  qbittorrent
  libreoffice-fresh
  kate
  ark
  gvfs-mtp
)

# Update package database
echo "Updating package database..."
pacman -Syu --noconfirm || {
  echo "Failed to update package database."
  exit 1
}

# Install packages
echo "Installing packages: ${PACKAGES[*]}"
for pkg in "${PACKAGES[@]}"; do
  echo "Installing $pkg..."
  if pacman -S --noconfirm "$pkg"; then
    echo "$pkg installed successfully."
  else
    echo "Failed to install $pkg."
    exit 1
  fi
done

echo "All packages installed successfully."