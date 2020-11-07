#! /bin/bash -e

# Install gcc, git, etc.
sudo yum group install -y "Development Tools"
sudo yum install -y openssl openssl-devel libcurl-devel expat-devel asciidoc xmlto
sudo yum install -y cmake

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install the latest git
[[ -d ~/src/git ]] || git clone https://github.com/git/git.git ~/src/git
cd ~/src/git
git checkout maint
git pull
make prefix=/usr all doc # info - requires docbook2-texi
sudo make prefix=/usr install install-doc # install-html install-info

# Build and install neovim
[[ -d ~/src/neovim ]] || git clone https://github.com/neovim/neovim.git ~/src/neovim
cd ~/src/neovim
git fetch
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install



echo "Success!"

