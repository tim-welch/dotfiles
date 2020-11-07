#! /bin/bash -e

# Install gcc, git, etc.
sudo yum group install -y "Development Tools"
sudo yum install -y openssl openssl-devel libcurl-devel expat-devel asciidoc xmlto


# Build and install the latest git
mkdir -p ~/src
[[ -d ~/src/git ]] || git clone https://github.com/git/git.git ~/src/git
cd ~/src/git
git checkout maint
git pull
make prefix=/usr all doc # info - requires docbook2-texi
sudo make prefix=/usr install install-doc # install-html install-info


echo "Success!"

