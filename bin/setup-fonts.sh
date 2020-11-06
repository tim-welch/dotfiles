#! /usr/bin/bash -e

# Install nerd fonts
if [[ ! -d ~/src/nerd-fonts ]]; then
    git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git ~/src/nerd-fonts
fi
~/src/nerd-fonts/install.sh --link
