#!/usr/bin/env fish

# Check if script is run with sudo
if test (id -u) -ne 0
  echo "This script must be run as root. Please use sudo."
  exit 1
end

# List of packages to install
set PACKAGES \
  vlc \
  vlc-plugins-all \
  calibre \
  evince \
  gnome-calculator \
  gnome-disk-utility \
  jdownloader2 \
  zen-browser-bin \
  brave-bin \
  qbittorrent \
  libreoffice-fresh \
  kate \
  ark \
  gvfs-mtp \
  shotwell \
  protonup-qt \
  blueberry \
  timeshift

# Update package database
echo "Updating package database..."
sudo pacman -Syu --noconfirm || begin
  echo "Failed to update package database."
  exit 1
end

# Install packages
echo "Installing packages: $PACKAGES"
for pkg in $PACKAGES
  echo "Installing $pkg..."
  if sudo pacman -S --noconfirm $pkg
    echo "$pkg installed successfully."
  else
    echo "Failed to install $pkg."
    exit 1
  end
end

echo "All packages installed successfully."
