#!/usr/bin/sh
# Script to install automatically tools and configurate the environment installed from colorful-dotfiles
# Packages and dependencies update
sudo apt-get update

# Wallpaper configuration on VM init
sudo cp wallpapers/maker-of-virtual-world-a6-1920x1080.jpg default-wallpaper ~/Pictures/Wallpapers/maker-of-virtual-world-a6-1920x1080.jpg
default-wallpaper --set ~/Pictures/Wallpapers/maker-of-virtual-world-a6-1920x1080.jpg

# Change polybar to top
polybar-changer --top

# Tools for VMware Workstation Player (change if you use VirtualBox)
sudo apt install open-vm-tools open-vm-tools-desktop

# Fix of mouse flicker in vmware guests
sudo cp config_files/xorg.conf /etc/X11/xorg.conf

# Language configuration (es --> spanish)
echo "setxkbmap es" >> ~/.config/bspwm/bspwmrc

# Timezone configuration
sudo timedatectl set-timezone Europe/Madrid

# Some tools installation
sudo apt-get install chromium seclists gobuster


