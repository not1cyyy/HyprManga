#!/bin/bash

# Set up error handling
set -euo pipefail

# Variables
DOTFILES_REPO="https://github.com/not1cyyy/HyprManga.git"
DOTFILES_DIR="$HOME/.config/dotfiles"
BACKUP_DIR="$HOME/.config-backup"

# Function to print messages
print_message() {
    echo -e "\n\033[1;32m==> $1\033[0m"
}

# Function to handle errors
handle_error() {
    echo -e "\n\033[1;31mERROR: $1\033[0m"
    exit 1
}

# Step 1: Install yay (AUR helper)
print_message "Installing yay..."
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed --noconfirm git base-devel || handle_error "Failed to install dependencies for yay."
    git clone https://aur.archlinux.org/yay.git /tmp/yay || handle_error "Failed to clone yay repository."
    cd /tmp/yay
    makepkg -si --noconfirm || handle_error "Failed to build and install yay."
    cd ~
    rm -rf /tmp/yay
else
    echo "yay is already installed. Skipping..."
fi

# Step 2: Install required packages using yay
print_message "Installing required packages using yay..."
yay -S --needed --noconfirm git hyprland hyprpaper hyprpanel rofi neovim alacritty kitty nautilus || handle_error "Failed to install packages."

# Step 3: Clone the dotfiles repository
print_message "Cloning dotfiles repository..."
if [ -d "$DOTFILES_DIR" ]; then
    echo "Dotfiles directory already exists. Pulling latest changes..."
    git -C "$DOTFILES_DIR" pull || handle_error "Failed to pull dotfiles repository."
else
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR" || handle_error "Failed to clone dotfiles repository."
fi

# Step 4: Backup existing configurations
print_message "Backing up existing configurations..."
mkdir -p "$BACKUP_DIR"
for config in hypr hyprpaper hyprpanel rofi nvim alacritty kitty nautilus; do
    if [ -d "$HOME/.config/$config" ]; then
        mv "$HOME/.config/$config" "$BACKUP_DIR/$config" || handle_error "Failed to backup $config."
    fi
done

# Step 5: Force copy dotfiles
print_message "Force copying dotfiles..."
for config in hypr hyprpaper rofi nvim alacritty kitty nautilus; do
    if [ -d "$DOTFILES_DIR/$config" ]; then
        cp -rf "$DOTFILES_DIR/$config" "$HOME/.config/" || handle_error "Failed to copy $config."
    else
        echo "Warning: $config directory not found in dotfiles repository. Skipping..."
    fi
done

# Step 6: Additional customizations (optional)
print_message "Applying additional customizations..."
# Example: Install fonts
yay -S --noconfirm ttf-jetbrains-mono-nerd ttf-font-awesome || handle_error "Failed to install fonts."

# Step 7: Final message
print_message "Dotfiles installation complete! Enjoy your new Hyprland setup."
echo "Backups of existing configurations are stored in $BACKUP_DIR."

# Step 8: Rebooting the system
print_message "Rebooting the system in 5 seconds..."
sleep 5
sudo reboot