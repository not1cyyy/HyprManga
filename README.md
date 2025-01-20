# HyprManga

## Screenshots

[Screenshot 1](screenshots/screenshot1.png)
[Screenshot 2](screenshots/screenshot2.png)
[Screenshot 3](screenshots/screenshot3.png)

## Overview

This repository contains my Hyprland dotfiles, themed around a manga-inspired aesthetic.

## Installation

### Backup Existing Configurations

Before proceeding, make sure to back up your existing configurations. You can do this by moving them to a backup directory:
```bash
mkdir ~/.config-backup
mv ~/.config/hypr ~/.config-backup/hypr
mv ~/.config/hyprpanel ~/.config-backup/hyprpanel
mv ~/.config/rofi ~/.config-backup/rofi
mv ~/.config/nautilus ~/.config-backup/nautilus
mv ~/.config/nvim ~/.config-backup/nvim
mv ~/.config/alacritty ~/.config-backup/alacritty
mv ~/.config/kitty ~/.config-backup/kitty
```
### Clone and Apply Dotfiles

Clone this repository to your local machine:
```bash
git clone https://github.com/your-username/hyprland-manga-dotfiles.git ~/.config/hyprland-manga-dotfiles
```
Force copy the new configurations to their respective locations:
```bash
cp -rf ~/.config/hyprland-manga-dotfiles/hypr ~/.config/hypr
cp -rf ~/.config/hyprland-manga-dotfiles/hyprpanel ~/.config/hyprpanel
cp -rf ~/.config/hyprland-manga-dotfiles/rofi ~/.config/rofi
cp -rf ~/.config/hyprland-manga-dotfiles/nautilus ~/.config/nautilus
cp -rf ~/.config/hyprland-manga-dotfiles/nvim ~/.config/nvim
cp -rf ~/.config/hyprland-manga-dotfiles/alacritty ~/.config/alacritty
cp -rf ~/.config/hyprland-manga-dotfiles/kitty ~/.config/kitty
```
## Customization

Feel free to customize these dotfiles to better suit your needs. The manga theme is primarily defined in the color schemes and wallpapers, which can be easily swapped out or modified.

## Dependencies

Ensure you have the following installed:

- Hyprland (https://github.com/hyprwm/Hyprland)
- Hyprpanel (https://github.com/Jas-SinghFSU/HyprPanel)
- Rofi (https://github.com/davatorium/rofi)
- Nautilus (https://github.com/GNOME/nautilus)
- Neovim (https://github.com/neovim/neovim)
- Alacritty (https://github.com/alacritty/alacritty)
- Kitty (https://github.com/kovidgoyal/kitty)

## Contributing

If you have any suggestions or improvements, please open an issue or submit a pull request. I'm always looking to refine and enhance this setup.