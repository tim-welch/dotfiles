#! /bin/bash -e

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install the latest git
[[ -d ~/src/git ]] || git clone https://github.com/git/git.git ~/src/git
cd ~/src/git
git checkout maint
git pull
make prefix=/usr all doc # info - requires docbook2-texi
sudo make prefix=/usr install install-doc # install-html install-info

# Done
echo "Success!"

