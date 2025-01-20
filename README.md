# HyprManga

## Screenshots

![image](https://github.com/user-attachments/assets/4b698c1f-08a5-427a-90b3-6fe11c9b457b)
![image](https://github.com/user-attachments/assets/a8c044e4-aa88-413f-bb74-3b90d8a53bf4)
![image](https://github.com/user-attachments/assets/93f5d3cc-5c23-4c04-b5b5-3ad24d5a2ef1)
![image](https://github.com/user-attachments/assets/44f868b9-d16c-4b29-8b26-7241c0e5953e)



## Overview

This repository contains my Hyprland dotfiles, themed around a manga-inspired aesthetic.

## Installation

### Automatic Install

You can install HyprManga automatically by running the following command:
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/not1cyyy/HyprManga/main/INSTALL.sh)"
```
## Manual Install

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
git clone https://github.com/not1cyyy/HyprManga.git ~/.config/HyprManga
```
Force copy the new configurations to their respective locations:
```bash
cp -rf ~/.config/HyprManga/dotconfig/hypr ~/.config/hypr
cp -rf ~/.config/HyprManga/dotconfig/hyprpanel ~/.config/hyprpanel
cp -rf ~/.config/HyprManga/dotconfig/rofi ~/.config/rofi
cp -rf ~/.config/HyprManga/dotconfig/nautilus ~/.config/nautilus
cp -rf ~/.config/HyprManga/dotconfig/nvim ~/.config/nvim
cp -rf ~/.config/HyprManga/dotconfig/alacritty ~/.config/alacritty
cp -rf ~/.config/HyprManga/dotconfig/kitty ~/.config/kitty
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
