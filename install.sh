#!/usr/bin/sh
# Script to install the repo of colorful-dotfiles
git clone https://github.com/nozerobit/colorful-dotfiles.git && cd colorful-dotfiles
chmod +x install_clear.sh && ./install_clear.sh
reboot || systemctl reboot

