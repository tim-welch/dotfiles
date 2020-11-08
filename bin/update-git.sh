#! /bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Build and install the latest git
[[ -d $SRC/git ]] || git clone https://github.com/git/git.git $SRC/git
cd $SRC/git
git checkout maint
git pull
make prefix=/usr all doc # info - requires docbook2-texi
sudo make prefix=/usr install install-doc # install-html install-info

# Done
echo "Success!"

