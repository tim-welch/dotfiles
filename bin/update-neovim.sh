#! /bin/bash -e

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install neovim
[[ -d ~/src/neovim ]] || git clone https://github.com/neovim/neovim.git ~/src/neovim
cd ~/src/neovim
git fetch
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Done
echo "Success!"

