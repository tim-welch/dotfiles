#! /usr/bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Install nerd fonts
if [[ ! -d $SRC/nerd-fonts ]]; then
    git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git $SRC/nerd-fonts
fi
$SRC/nerd-fonts/install.sh --link
