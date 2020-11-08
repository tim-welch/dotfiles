#! /bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Build and install neovim
[[ -d $SRC/neovim ]] || git clone https://github.com/neovim/neovim.git $SRC/neovim
cd $SRC/neovim
git fetch
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Done
echo "Success!"

