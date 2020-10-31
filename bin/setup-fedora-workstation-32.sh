#! /usr/bin/sh -e

# This script assumes Fedora Workstation 32 is installed with the default Gnome Desktop.

# Install system tools and utilities
sudo dnf install -y 'dnf-command(versionlock)'
sudo dnf install -y vim util-linux-user wget curl tar gzip

# Install Brave web browser
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser

# Install development tools
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y autoconf automake cmake libstdc++

# Install i3 window manager
sudo dnf install -y xorg-x11-server-Xorg
sudo dnf copr -y enable yaroslav/i3desktop
sudo dnf copr -y enable vladius/i3blocks
sudo dnf install -y i3 i3lock i3status dmenu rofi i3blocks compton


